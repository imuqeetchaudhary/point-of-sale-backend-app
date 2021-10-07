const sequelize = require("sequelize");
const db = require("../../models");
const userUtils = require("./utils");
const utils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

async function listAllUsers() {
  return db.User.findAll({
    where: { isSuperuser: false },
    ..._prop.hideFieldsCondition(),
  });
}

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
    let _userRoles = {};
    const defaultRole = userUtils.DEFAULT_ROLE;

    _userRoles[defaultRole] = {
      userId,
      roleId: defaultRole,
      createdBy,
      updatedBy: createdBy,
    };
    roleIds.forEach((roleId) => {
      const role = { userId, roleId, createdBy, updatedBy: createdBy };
      _userRoles[role.roleId] = role;
    });

    await db.UserAccessRoles.bulkCreate(Object.values(_userRoles), {
      transaction,
    });
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
  const _createUserRoles = async (userId, transaction) => {
    let _userRoles = {};
    const defaultRole = 1;

    _userRoles[defaultRole] = {
      userId,
      roleId: defaultRole,
      createdBy: updatedBy,
      updatedBy,
    };
    roleIds.forEach((roleId) => {
      const role = { userId, roleId, createdBy, updatedBy: createdBy };
      _userRoles[role.roleId] = role;
    });

    await db.UserAccessRoles.bulkCreate(Object.values(_userRoles), {
      transaction,
    });
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

module.exports = {
  listUserRoles,
  listAllUsers,
  findById,
  findByEmail,
  saveUser,
  updateUser,
};

const _prop = {
  HIDDEN_FIELDS: ["createdAt", "updatedAt", "authType", "email"],
  hideFieldsCondition: function (...args) {
    return { attributes: { exclude: [...this.HIDDEN_FIELDS, ...args] } };
  },
};
