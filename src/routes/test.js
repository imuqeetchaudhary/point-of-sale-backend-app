const express = require("express");
const roleService = require("../services/role");

const router = express.Router();
router.get("/", async (_, res) => {
  const roles = await roleService.listAllRoles();
  res.send({ roles });
});

module.exports = router;
