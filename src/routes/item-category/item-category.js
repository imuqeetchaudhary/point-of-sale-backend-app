const express = require("express");
const router = express.Router();
const itemCategoryController = require("../../controllers/item-category/item-category");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createItemCategorySchema,
} = require("../../validations/item-category/item-category");

router.post(
  "/create",
  authentication,
  validation(createItemCategorySchema),
  itemCategoryController.createItemCategory
);

module.exports = router;
