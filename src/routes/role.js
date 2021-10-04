const express = require("express");
const router = express.Router();
const roleController = require("../controllers/role");
const { validation } = require("../middlewares/validation");
const { authentication } = require("../middlewares/isAuth");
const { createRoleSchema } = require("../validations/role");

router.post(
  "/create",
  authentication,
  validation(createRoleSchema),
  roleController.createRole
);

router.get("/get-all", authentication, roleController.getAllRoles);

router.patch(
  "/update/:id",
  authentication,
  validation(createRoleSchema),
  roleController.updateRole
);

module.exports = router;
