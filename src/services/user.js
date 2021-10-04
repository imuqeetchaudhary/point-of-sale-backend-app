const db = require("../models");
const Exceptions = require("../utils/custom-exceptions");
const { SQL_ERROR_CODE } = require("./error-code.utils");

async function findByEmail({ email }) {
  return db.User.findOne({
    where: { email },
    attributes: { exclude: ["createdAt", "updatedAt", "authType", "email"] },
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
    if (err.original.errno === SQL_ERROR_CODE.duplicateEntry) {
      throw new Exceptions.BadRequest({ message: "Email already exists" });
    }

    throw err;
  }
}

module.exports = { findByEmail, createUser };
