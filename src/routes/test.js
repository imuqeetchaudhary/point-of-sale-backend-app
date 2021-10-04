const express = require("express");
const roleService = require("../services/role");

const router = express.Router();
router.get("/", async (_, res) => {
  const role = await roleService.updateRole({
    roleId: 4,
    description: "Accountant",
    updatedBy: 1,
  });
  res.send({ role });
});

module.exports = router;
