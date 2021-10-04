const db = require("../../models");
const roleUtils = require("./utils");
const utils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

async function listAllRoles() {
  return db.Role.findAll({
    attributes: ["roleId", "description"],
  });
}

async function saveRole({ description, createdBy }) {
  try {
    const role = await db.Role.create({
      description,
      createdBy,
      updatedBy: createdBy,
    });
    return role;
  } catch (err) {
    roleUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

async function updateRole({ roleId, description, updatedBy }) {
  try {
    const role = await db.Role.update(
      { description, updatedBy },
      { where: { roleId } }
    );

    if (utils.isRecordFound(role)) {
      throw new Exceptions.NotFound({ message: "Role is not found" });
    }
  } catch (err) {
    roleUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

module.exports = { listAllRoles, saveRole, updateRole };
