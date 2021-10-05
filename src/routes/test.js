const express = require("express");
const roleService = require("../services/role");
const menuService = require("../services/menu");
const roleMenuService = require("../services/menu-access-roles");
const userRolesService = require("../services/user-access-roles");

const router = express.Router();
router.get("/", async (_, res) => {
  await role(res);
});

module.exports = router;

async function userRoles(res) {
  const userRoles = [{ userId: 1, roleId: 1, createdBy: 1 }];

  const userRolesInDb = await userRolesService.saveUserRoles({ userRoles });
  res.send({ userRolesInDb });
}

async function roleMenus(res) {
  // const roleMenus = [{ roleId: 2, menuId: 3, createdBy: 1 }];
  // const roleMenusInDb = await roleMenuService.saveRoleMenus({ roleMenus });
  // res.send({ roleMenusInDb });
  // const roleMenus = await roleMenuService.listRoleMenus({ roleId: 1 });
  // res.send({ roleMenus });
}

async function role(res) {
  // const role = await roleService.saveRole({
  //   description: "Accountant",
  //   createdBy: 1,
  // });
  // res.send({ role });

  const roleMenus = [1, 3];
  await roleService.updateRole({
    roleId: 1,
    updatedBy: 1,
    roleMenus,
  });

  res.send("Successfully updated the role and role menu");
}

async function menu(res) {
  // const menu = await menuService.listAllMenusForRole({
  //   roleId: 2,
  // });
  // res.send({ menu });
}
