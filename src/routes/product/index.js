const express = require("express");
const router = express.Router();
const productController = require("../../controllers/product");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createProductSchema,
  updateProductSchema,
} = require("../../validations/product");

router.post(
  "/create",
  authentication,
  validation(createProductSchema),
  productController.createProduct
);

router.get("/get-all", authentication, productController.getAllProduct);

router.get("/get/:id", authentication, productController.getSingleProduct);

router.patch(
  "/update/:id",
  authentication,
  validation(updateProductSchema),
  productController.updateProduct
);

router.delete("/delete/:id", authentication, productController.deleteProduct);

module.exports = router;
