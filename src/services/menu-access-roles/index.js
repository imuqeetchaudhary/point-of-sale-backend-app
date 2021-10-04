const db = require("../../models");

async function saveRoleMenus({ roleMenus }) {
  const _roleMenus = roleMenus.map((menu) => {
    return { ...menu, updatedBy: menu.createdBy };
  });

  try {
    const roleMenusInDb = await db.MenuAccessRoles.bulkCreate([..._roleMenus]);
    return roleMenusInDb;
  } catch (err) {
    console.log("error", err);
  }
}

module.exports = { saveRoleMenus };
