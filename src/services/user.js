const db = require("../models");
const Exceptions = require("../utils/custom-exceptions");
const { SQL_ERROR_CODE } = require("./error-code.utils");

async function findById({ id }) {
  return db.User.findByPk(id, _prop.hideFieldsCondition("password"));
}

async function findByEmail({ email }) {
  return db.User.findOne({
    where: { email },
    ..._prop.hideFieldsCondition(),
  });
}

async function createUser({ email, password, displayName }) {
  try {
    const user = await db.User.create({
      username: email,
      email,
      password,
      displayName,
    });

    return user;
  } catch (err) {
    console.log("error", err);
    if (err.original.errno === SQL_ERROR_CODE.duplicateEntry) {
      throw new Exceptions.BadRequest({ message: "Email already exists" });
    }

    throw err;
  }
}

module.exports = { findById, findByEmail, createUser };

const _prop = {
  HIDDEN_FIELDS: ["createdAt", "updatedAt", "authType", "email"],
  hideFieldsCondition: function (...args) {
    return { attributes: { exclude: [...this.HIDDEN_FIELDS, ...args] } };
  },
};
