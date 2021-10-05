const db = require("../../models");
const utils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

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
    const _userRoles = roleIds.map((roleId) => {
      return { userId, roleId, createdBy, updatedBy: createdBy };
    });
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

module.exports = { findById, findByEmail, saveUser };

const _prop = {
  HIDDEN_FIELDS: ["createdAt", "updatedAt", "authType", "email"],
  hideFieldsCondition: function (...args) {
    return { attributes: { exclude: [...this.HIDDEN_FIELDS, ...args] } };
  },
};
