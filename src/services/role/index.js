const sequelize = require("sequelize");
const db = require("../../models");
const roleUtils = require("./utils");
const utils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

async function listAllRoles() {
  return db.Role.findAll({
    attributes: ["roleId", "description"],
  });
}

async function listAllRolesForUser({ userId }) {
  return db.sequelize.query(
    roleUtils.queryForGetAndCheckRoleExistsForUser(userId),
    { type: sequelize.QueryTypes.SELECT }
  );
}

async function saveRole({ description, createdBy, menus }) {
  const _createRole = async (transaction) => {
    const role = await db.Role.create(
      {
        description,
        createdBy,
        updatedBy: createdBy,
      },
      { transaction }
    );
    return role;
  };
  const _createRoleMenus = async (roleId, transaction) => {
    const _roleMenus = menus.map((menuId) => {
      return {
        menuId,
        roleId,
        createdBy,
        updatedBy: createdBy,
      };
    });
    await db.MenuAccessRoles.bulkCreate([..._roleMenus], { transaction });
  };

  const trans = await db.sequelize.transaction();
  try {
    const role = await _createRole(transaction);
    await _createRoleMenus(role.roleId, transaction);

    await trans.commit();
    return role;
  } catch (err) {
    await trans.rollback();

    roleUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

async function updateRole({ roleId, description, updatedBy, menus }) {
  const _deleteAllRoleMenus = async (transaction) => {
    await db.MenuAccessRoles.destroy({ where: { roleId } }, { transaction });
  };
  const _update = async () => {
    const role = await db.Role.update(
      { description, updatedBy },
      { where: { roleId } },
      { transaction }
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
    await db.MenuAccessRoles.bulkCreate([..._roleMenus], { transaction });
  };

  const trans = await db.sequelize.transaction();
  try {
    await _deleteAllRoleMenus(trans);
    await _update(trans);
    await _createRoleMenus(trans);

    await trans.commit();
  } catch (err) {
    trans.rollback();

    roleUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

module.exports = { listAllRoles, listAllRolesForUser, saveRole, updateRole };
