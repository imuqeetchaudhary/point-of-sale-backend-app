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

    if (roleUtils.isRoleFound(role)) {
      throw new Exceptions.NotFound({ message: "Role is not found" });
    }
  } catch (err) {
    roleUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

module.exports = { saveRole, updateRole };
