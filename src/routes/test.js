const express = require("express");
const userService = require("../services/user");

const router = express.Router();
router.get("/", async (_, res) => {
  const user = await userService.createUser({
    displayName: "Jazim Abbas",
    email: "jazim@gmail.com",
    password: "password",
  });
  res.send({ user });
});

module.exports = router;
