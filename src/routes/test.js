const express = require("express");
const roleService = require("../services/role");

const router = express.Router();
router.get("/", async (_, res) => {
  const role = await roleService.saveRole({
    description: "Accountant",
    createdBy: 1,
  });
  res.send({ role });
});

module.exports = router;
