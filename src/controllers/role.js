const roleService = require("../services/role");
const menuAccessRoleService = require("../services/menu-access-roles/index");
const Exceptions = require("../utils/custom-exceptions");

exports.createRole = async (req, res) => {
  const { description, menuIds } = req.body;
  const createdBy = req.user.userId;

  const role = await roleService.saveRole({ description, createdBy });

  const roleId = role.roleId;

  const roleMenus = menuIds.map((menuId) => {
    return { roleId, menuId, createdBy };
  });

  const menu = await menuAccessRoleService.saveRoleMenus({ roleMenus });

  res.status(200).json({
    message: "Successfully created new role & menu access role",
    role,
    menu,
  });
};

exports.getAllRoles = async (req, res) => {
  const role = await roleService.listAllRoles();
  res.status(200).json({ role });
};

exports.updateRole = async (req, res) => {
  const roleId = req.params.id;
  const { description } = req.body;
  const updatedBy = req.user.userId;

  const updateRole = await roleService.updateRole({
    roleId,
    description,
    updatedBy,
  });

  res.status(200).json({ message: "Successfully updated role" });
};
