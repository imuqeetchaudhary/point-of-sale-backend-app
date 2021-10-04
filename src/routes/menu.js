const express = require("express");
const router = express.Router();
const menuController = require("../controllers/menu");
const { validation } = require("../middlewares/validation");
const { authentication } = require("../middlewares/isAuth");
const { createMenuSchema, updateMenuSchema } = require("../validations/menu");

router.post(
  "/create",
  authentication,
  validation(createMenuSchema),
  menuController.createMenu
);

router.get("/get-all", authentication, menuController.getAllMenu);

router.patch(
  "/update/:id",
  authentication,
  validation(updateMenuSchema),
  menuController.updateMenu
);

module.exports = router;
