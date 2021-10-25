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
  let { description, link, parentId, icon } = req.body;
  const updatedBy = req.user.userId;
  // const icon = req.file.filename;

  if (parentId == 0) {
    parentId = null;
  }

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
  const roleId = id;
  let menusArray = [];
  let assignedMenusArray = [];

  const menu = await menuService.listAllMenus();

  const assignedMenu = await menuService.listAllAssignedMenusForRole({
    roleId,
  });

  menu.forEach((menu) => {
    menusArray.push({
      id: menu.menuId,
      description: menu.description,
    });
  });
  // console.log(menusArray);

  console.log("--------------------------------");

  assignedMenu.forEach((menu) => {
    assignedMenusArray.push({
      id: menu.Menu.menuId,
      description: menu.Menu.description,
    });
  });
  // console.log(assignedMenusArray);

  const find = () => {
    const _ = [];

    menusArray.forEach((menuObj) => {
      const menu = { ...menuObj };

      const menuFound = assignedMenusArray.filter(
        (selectedMenu) => selectedMenu.id == menu.id
      );
      menu.found = menuFound !== null && menuFound.length > 0;

      _.push(menu);
    });
    return _;
  };

  const totalMenu = find();

  res.status(200).json({ menu: totalMenu });
});

exports.getAllAssignedMenuForSingleRole = promise(async (req, res) => {
  const { id } = req.params;

  const menu = await menuService.listAllAssignedMenusForRole({ roleId: id });

  res.status(200).json({ menu });
});

exports.getSingleMenu = promise(async (req, res) => {
  const { id } = req.params;
  const menuId = id;

  const menu = await menuService.findById({ menuId });
  res.status(200).json({ menu });
});
