const express = require("express");
const menuService = require("../services/menu");
const userSservice = require("../services/user");

const router = express.Router();
router.get("/", async (_, res) => {
  await user(res);
});

async function user(res) {
  const user = await userSservice.saveUser({
    email: "jazim@gmail.com",
    displayName: "Jazim",
    password: "password",
    createdBy: 1,
    roleIds: [1, 2, 3],
  });
  res.send({ user });

  // const userRoles = await userSservice.listUserRoles({ userId: 5 });
  // res.send({ userRoles });
}

async function menu(res) {
  const menu = await menuService.findById({ menuId: 5 });
  res.send({ menu });
}

module.exports = router;
