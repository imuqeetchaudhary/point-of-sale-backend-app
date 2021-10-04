const roleService = require("../services/role");
const Exceptions = require("../utils/custom-exceptions");

exports.createRole = async (req, res) => {
  const { description } = req.body;
  const createdBy = req.user.userId;

  const role = await roleService.saveRole({ description, createdBy });

  res.status(200).json({ message: "Successfully created new role", role });
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