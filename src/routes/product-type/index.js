const express = require("express");
const router = express.Router();
const productTypeController = require("../../controllers/product-type");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createProductTypeSchema,
  updateProductTypeSchema,
} = require("../../validations/product-type");

router.post(
  "/create",
  authentication,
  validation(createProductTypeSchema),
  productTypeController.createProductType
);

router.get("/get-all", authentication, productTypeController.getAllProductType);

router.get(
  "/get/:id",
  authentication,
  productTypeController.getSingleProductType
);

router.patch(
  "/update/:id",
  authentication,
  validation(updateProductTypeSchema),
  productTypeController.updateProductType
);

router.delete(
  "/delete/:id",
  authentication,
  productTypeController.deleteProductType
);

module.exports = router;
