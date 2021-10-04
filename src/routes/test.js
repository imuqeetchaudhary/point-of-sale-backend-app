const express = require("express");
const userService = require("../services/user");

const router = express.Router();
router.get("/", async (_, res) => {
  const user = await userService.findByEmail({ email: "admin@gmail.com" });
  res.send({ user });
});

module.exports = router;
