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
  const _createRole = async () => {
    const role = await db.Role.create({
      description,
      createdBy,
      updatedBy: createdBy,
    });
    return role;
  };
  const _createRoleMenus = async (roleId) => {
    const _roleMenus = menus.map((menuId) => {
      return {
        menuId,
        roleId,
        createdBy,
        updatedBy: createdBy,
      };
    });
    await db.MenuAccessRoles.bulkCreate([..._roleMenus]);
  };

  const trans = await db.sequelize.transaction();

  try {
    const role = await _createRole();
    await _createRoleMenus(role.roleId);

    await trans.commit();
    return role;
  } catch (err) {
    await trans.rollback();

    roleUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

async function updateRole({ roleId, description, updatedBy, menus }) {
  const _deleteAllRoleMenus = async () => {
    await db.MenuAccessRoles.destroy({ where: { roleId } });
  };
  const _update = async () => {
    const role = await db.Role.update(
      { description, updatedBy },
      { where: { roleId } }
    );
    if (utils.isRecordFound(role))
      throw new Exceptions.NotFound({ message: "Role is not found" });
    return role;
  };
  const _createRoleMenus = async () => {
    const _roleMenus = menus.map((menu) => {
      return {
        menuId: menu,
        roleId: roleId,
        updatedBy,
        createdBy: updatedBy,
      };
    });
    await db.MenuAccessRoles.bulkCreate([..._roleMenus]);
  };

  const trans = await db.sequelize.transaction();

  try {
    await _deleteAllRoleMenus();
    await _update();
    await _createRoleMenus();

    await trans.commit();
  } catch (err) {
    trans.rollback();

    roleUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

module.exports = { listAllRoles, saveRole, updateRole };
