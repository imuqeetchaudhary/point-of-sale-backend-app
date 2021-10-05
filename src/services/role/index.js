const db = require("../../models");
const roleUtils = require("./utils");
const utils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

async function listAllRoles() {
  return db.Role.findAll({
    attributes: ["roleId", "description"],
  });
}

async function saveRole({ description, createdBy, menus }) {
  const trans = await db.sequelize.transaction();

  try {
    const role = await db.Role.create({
      description,
      createdBy,
      updatedBy: createdBy,
    });

    console.log("roleId: ", role.roleId);
    const _roleMenus = menus.map((menu) => {
      return {
        menuId: menu,
        roleId: role.roleId,
        createdBy,
        updatedBy: createdBy,
      };
    });
    console.log(_roleMenus);

    await db.MenuAccessRoles.bulkCreate([..._roleMenus]);

    await trans.commit();
    return role;
  } catch (err) {
    await trans.rollback();

    roleUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

async function updateRole({ roleId, description, updatedBy, menus }) {
  const _roleMenus = menus.map((menu) => {
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

    await db.MenuAccessRoles.bulkCreate([..._roleMenus]);
    await trans.commit();
  } catch (err) {
    trans.rollback();

    roleUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

module.exports = { listAllRoles, saveRole, updateRole };
