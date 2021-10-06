const express = require("express");
const userService = require("../services/user");
const roleService = require("../services/role");
const menuService = require("../services/menu");
const roleMenuService = require("../services/menu-access-roles");
const userRolesService = require("../services/user-access-roles");
const brandService = require("../services/brand");

const router = express.Router();
router.get("/", async (_, res) => {
  await brand(res);
});

module.exports = router;

async function brand(res) {
  // const brand = await brandService.updateBrand({
  //   brandId: 4,
  //   description: "Sony TV",
  //   actionPerformBy: 1,
  // });
  // res.send({ brand });

  const brands = await brandService.listAllBrands();
  res.send({ brands });
}

async function user(res) {
  // const user = await userService.updateUser({
  //   userId: 4,
  //   displayName: "Hassan",
  //   updatedBy: 1,
  //   roleIds: [1, 2],
  // });
  // res.send({ user });
  // const user = await userService.saveUser({
  //   email: "hassan@gmail.com",
  //   displayName: "hassan",
  //   password: "password",
  //   createdBy: 1,
  //   roleIds: [2],
  // });
  // res.send({ user });
}

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

  // await roleService.updateRole({
  //   roleId: 9,
  //   updatedBy: 1,
  //   menus: [1, 3],
  // });

  // const role = await roleService.saveRole({
  //   description: "Gate Keeper",
  //   createdBy: 1,
  //   menus: [1],
  // });
  // res.send({ role });

  const roles = await roleService.listAllRolesForUser({ userId: 1 });
  res.send({ roles });
}

async function menu(res) {
  // const menu = await menuService.listAllMenusForRole({
  //   roleId: 2,
  // });
  // res.send({ menu });
}
