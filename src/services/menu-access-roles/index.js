const db = require("../../models");
const utils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

async function saveRoleMenus({ roleMenus }) {
  const _roleMenus = roleMenus.map((menu) => {
    return { ...menu, updatedBy: menu.createdBy };
  });
  const transaction = await db.sequelize.transaction();

  try {
    const roleMenusInDb = await db.MenuAccessRoles.bulkCreate([..._roleMenus]);

    await transaction.commit();

    return roleMenusInDb;
  } catch (err) {
    await transaction.rollback();

    if (utils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: `You already pair the roleId and menuId. It should not repeat`,
      });
    }

    throw err;
  }
}

module.exports = { saveRoleMenus };
