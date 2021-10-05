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

async function updateRole({ roleId, description, updatedBy, roleMenus }) {
  const _roleMenus = roleMenus.map((menu) => {
    return {
      menuId: menu,
      roleId: roleId,
      updatedBy,
      createdBy: updatedBy,
    };
  });
  const trans = await db.sequelize.transaction();

  try {
    await db.MenuAccessRoles.destroy({ where: { roleId } });

    const role = await db.Role.update(
      { description, updatedBy },
      { where: { roleId } }
    );
    if (utils.isRecordFound(role)) {
      throw new Exceptions.NotFound({ message: "Role is not found" });
    }

    const record = await db.MenuAccessRoles.bulkCreate([..._roleMenus]);
    console.log("record: ", record);
    await trans.commit();
  } catch (err) {
    trans.rollback();

    roleUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

module.exports = { listAllRoles, saveRole, updateRole };
