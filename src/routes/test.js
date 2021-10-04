const express = require("express");
// const roleService = require("../services/role");
const menuService = require("../services/menu");
const roleMenuService = require("../services/menu-access-roles");

const router = express.Router();
router.get("/", async (_, res) => {
  await menu(res);
});

module.exports = router;

async function roleMenus(res) {
  const roleMenus = [{ roleId: 1, menuId: 1, createdBy: 1 }];

  const roleMenusInDb = await roleMenuService.saveRoleMenus({ roleMenus });
  res.send({ roleMenusInDb });
}

async function role(res) {
  const role = await roleService.saveRole({
    description: "Accountant",
    createdBy: 1,
  });
  res.send({ role });
}

async function menu(res) {
  const menu = await menuService.saveMenu({
    description: "php",
    link: "/programming/php",
    createdBy: 1,
    parentId: 1,
  });
  res.send({ menu });
}
