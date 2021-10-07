const roleService = require("../services/role");
const { promise } = require("../middlewares/promise");
const Exceptions = require("../utils/custom-exceptions");

exports.createRole = promise(async (req, res) => {
  const { description, menuIds } = req.body;
  const createdBy = req.user.userId;
  const menus = menuIds;

  const role = await roleService.saveRole({
    description,
    createdBy,
    menus,
  });

  res.status(200).json({
    message: "Successfully created new role",
    role,
  });
});

exports.getAllRoles = promise(async (req, res) => {
  const role = await roleService.listAllRoles();
  res.status(200).json({ role });
});

exports.updateRole = promise(async (req, res) => {
  const roleId = req.params.id;
  const { description, menuIds } = req.body;
  const updatedBy = req.user.userId;
  const menus = menuIds;

  const updateRole = await roleService.updateRole({
    roleId,
    description,
    updatedBy,
    menus,
  });

  res.status(200).json({ message: "Successfully updated role" });
});
