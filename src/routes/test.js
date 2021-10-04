const express = require("express");
const userService = require("../services/user");

const router = express.Router();
router.get("/", async (_, res) => {
  const user = await userService.findById({
    id: 1,
  });
  res.send({ user });
});

module.exports = router;
