const express = require("express");
const router = express.Router();
const itemCategoryController = require("../../controllers/item-category/item-category");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createItemCategorySchema,
  updateItemCategorySchema,
} = require("../../validations/item-category/item-category");

router.post(
  "/create",
  authentication,
  validation(createItemCategorySchema),
  itemCategoryController.createItemCategory
);

router.get(
  "/get-all",
  authentication,
  itemCategoryController.getAllItemCategory
);

router.get(
  "/get/:id",
  authentication,
  itemCategoryController.getSingleItemCategory
);

router.patch(
  "/update/:id",
  authentication,
  validation(updateItemCategorySchema),
  itemCategoryController.updateItemCategory
);

module.exports = router;
