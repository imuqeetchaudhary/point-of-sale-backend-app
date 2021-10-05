const menuService = require("../services/menu/index");
const Exceptions = require("../utils/custom-exceptions");

exports.createMenu = async (req, res) => {
  const { description, link, parentId } = req.body;
  const createdBy = req.user.userId;
  const icon = req.file.filename;

  const menu = await menuService.saveMenu({
    description,
    link,
    parentId,
    createdBy,
    icon,
  });

  res.status(200).json({ message: "Successfully created new menu", menu });
};

exports.getAllMenu = async (req, res) => {
  const menu = await menuService.listAllMenus();
  res.status(200).json({ menu });
};

exports.updateMenu = async (req, res) => {
  const menuId = req.params.id;
  const { description, link, parentId } = req.body;
  const updatedBy = req.user.userId;
  const icon = req.file.filename;

  const updateMenu = await menuService.updateMenu({
    menuId,
    description,
    link,
    parentId,
    updatedBy,
    icon,
  });

  res.status(200).json({ message: "Successfully updated menu" });
};

exports.getMenuForSingleRole = async (req, res) => {
  const { id } = req.params;

  const menu = await menuService.listAllMenusForRole({ roleId: id });

  res.status(200).json({ menu });
};
