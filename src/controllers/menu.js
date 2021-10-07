const menuService = require("../services/menu/index");
const { promise } = require("../middlewares/promise");
const Exceptions = require("../utils/custom-exceptions");

exports.createMenu = promise(async (req, res) => {
  var { description, link, parentId, icon } = req.body;
  const createdBy = req.user.userId;
  // const icon = req.file.filename;

  if (parentId == 0) {
    parentId = null;
  }

  const menu = await menuService.saveMenu({
    description,
    link,
    parentId,
    createdBy,
    icon,
  });

  res.status(200).json({ message: "Successfully created new menu", menu });
});

exports.getAllMenu = promise(async (req, res) => {
  const menu = await menuService.listAllMenus();
  res.status(200).json({ menu });
});

exports.updateMenu = promise(async (req, res) => {
  const menuId = req.params.id;
  const { description, link, parentId, icon } = req.body;
  const updatedBy = req.user.userId;
  // const icon = req.file.filename;

  const updateMenu = await menuService.updateMenu({
    menuId,
    description,
    link,
    parentId,
    updatedBy,
    icon,
  });

  res.status(200).json({ message: "Successfully updated menu" });
});

exports.getMenuForSingleRole = promise(async (req, res) => {
  const { id } = req.params;

  const menu = await menuService.listAllMenusForRole({ roleId: id });

  res.status(200).json({ menu });
});

exports.getSingleMenu = promise(async (req, res) => {
  const { id } = req.params;
  const menuId = id;

  const menu = await menuService.findById({ menuId });
  res.status(200).json({ menu });
});
