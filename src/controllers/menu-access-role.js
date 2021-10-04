const menuAccessRoleService = require("../services/menu-access-roles/index");
const Exceptions = require("../utils/custom-exceptions");

exports.createMenuAccessRole = async (req, res) => {
  const { roleId, menuIds } = req.body;
  const createdBy = req.user.userId;

  const roleMenus = menuIds.map((menuId) => {
    return { roleId, menuId, createdBy };
  });

  const menu = await menuAccessRoleService.saveRoleMenus({ roleMenus });

  res
    .status(200)
    .json({ message: "Successfully created new menu access role", menu });
};
