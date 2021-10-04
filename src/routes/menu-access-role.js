const express = require("express");
const router = express.Router();
const menuAccessRoleController = require("../controllers/menu-access-role");
const { validation } = require("../middlewares/validation");
const { authentication } = require("../middlewares/isAuth");
const { createMenuAccessRoleSchema } = require("../validations/menu-access-role");

router.post(
  "/create",
  authentication,
  validation(createMenuAccessRoleSchema),
  menuAccessRoleController.createMenuAccessRole
);

module.exports = router;
