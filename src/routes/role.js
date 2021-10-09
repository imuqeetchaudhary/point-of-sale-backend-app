const express = require("express");
const router = express.Router();
const roleController = require("../controllers/role");
const { validation } = require("../middlewares/validation");
const { authentication } = require("../middlewares/isAuth");
const { createRoleSchema, updateRoleSchema } = require("../validations/role");

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
  validation(updateRoleSchema),
  roleController.updateRole
);

router.get("/user/:id", authentication, roleController.getUserRoles);

module.exports = router;
