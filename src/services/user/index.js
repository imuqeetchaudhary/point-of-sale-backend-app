const sequelize = require("sequelize");
const db = require("../../models");
const userUtils = require("./utils");
const utils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

async function listUserRoles({ userId }) {
  return db.sequelize.query(userUtils.queryForGettingAllUserRoles(userId), {
    type: sequelize.QueryTypes.SELECT,
  });
}

async function findById({ id }) {
  return db.User.findByPk(id, _prop.hideFieldsCondition("password"));
}

async function findByEmail({ email }) {
  return db.User.findOne({
    where: { email },
    ..._prop.hideFieldsCondition(),
  });
}

async function saveUser({ email, password, displayName, createdBy, roleIds }) {
  const _createUser = async (transaction) => {
    const user = await db.User.create(
      {
        username: email,
        email,
        password,
        displayName,
      },
      { transaction }
    );
    return user;
  };
  const _createUserRoles = async (userId, transaction) => {
    let _userRoles;
    if (roleIds && roleIds.length > 0) {
      _userRoles = roleIds.map((roleId) => {
        return { userId, roleId, createdBy, updatedBy: createdBy };
      });
    } else {
      const defaultRole = 1;
      _userRoles = [
        { userId, roleId: defaultRole, createdBy, updatedBy: createdBy },
      ];
    }
    await db.UserAccessRoles.bulkCreate([..._userRoles], { transaction });
  };

  const trans = await db.sequelize.transaction();
  try {
    const user = await _createUser(trans);
    await _createUserRoles(user.userId, trans);

    await trans.commit();
    return user;
  } catch (err) {
    await trans.rollback();

    if (utils.isRecordDuplicate(err))
      throw new Exceptions.BadRequest({ message: "Email already exists" });
    throw err;
  }
}

async function updateUser({ userId, email, displayName, updatedBy, roleIds }) {
  const _deleteUserRoles = async (transaction) => {
    await db.UserAccessRoles.destroy({ where: { userId } }, { transaction });
  };
  const _updateUser = async (transaction) => {
    const user = await db.User.update(
      { email, displayName },
      { where: { userId } },
      { transaction }
    );
    return user;
  };
  const _createUserRoles = async (transaction) => {
    const _userRoles = roleIds.map((roleId) => {
      return { userId, roleId, createdBy: updatedBy, updatedBy };
    });
    await db.UserAccessRoles.bulkCreate([..._userRoles], { transaction });
  };

  const trans = await db.sequelize.transaction();
  try {
    await _deleteUserRoles(trans);
    await _updateUser(trans);
    await _createUserRoles(trans);

    await trans.commit();
  } catch (err) {
    trans.rollback();
    throw err;
  }
}

module.exports = { listUserRoles, findById, findByEmail, saveUser, updateUser };

const _prop = {
  HIDDEN_FIELDS: ["createdAt", "updatedAt", "authType", "email"],
  hideFieldsCondition: function (...args) {
    return { attributes: { exclude: [...this.HIDDEN_FIELDS, ...args] } };
  },
};
