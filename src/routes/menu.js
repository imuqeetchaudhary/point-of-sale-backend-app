const express = require("express");
const router = express.Router();
const menuController = require("../controllers/menu");
const { validation } = require("../middlewares/validation");
const { authentication } = require("../middlewares/isAuth");
const { upload } = require("../middlewares/upload");
const { createMenuSchema } = require("../validations/menu");

router.post(
  "/create",
  authentication,
  validation(createMenuSchema),
  upload.single("icon"),
  menuController.createMenu
);

router.get("/get-all", authentication, menuController.getAllMenu);

router.patch(
  "/update/:id",
  authentication,
  validation(createMenuSchema),
  upload.single("icon"),
  menuController.updateMenu
);

module.exports = router;
