const express = require("express");
const menuService = require("../services/menu");
const userSservice = require("../services/user");

const router = express.Router();
router.get("/", async (_, res) => {
  await user(res);
});

async function user(res) {
  const user = await userSservice.saveUser({
    email: "usama@gmail.com",
    displayName: "Usama",
    password: "password",
    createdBy: 1,
    roleIds: [2, 3],
  });
  res.send({ user });
}

async function menu(res) {
  const menu = await menuService.findById({ menuId: 5 });
  res.send({ menu });
}

module.exports = router;
