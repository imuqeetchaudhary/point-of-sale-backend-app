const db = require("../../models");
const roleUtils = require("./utils");
const Exceptions = require("../../utils/custom-exceptions");

async function saveRole({ description, createdBy }) {
  try {
    const role = await db.Role.create({
      description,
      createdBy,
      updatedBy: createdBy,
    });
    return role;
  } catch (err) {
    console.log("err: ", err);
    if (roleUtils.isRoleExists(err)) {
      throw new Exceptions.BadRequest({ message: "Role already exists" });
    } else if (roleUtils.isUserExists(err)) {
      throw new Exceptions.BadRequest({ message: "User is not exists" });
    }

    throw err;
  }
}

module.exports = { saveRole };
