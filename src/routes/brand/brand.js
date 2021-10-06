const express = require("express");
const router = express.Router();
const brandController = require("../../controllers/brand/brand");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const { createBrandSchema } = require("../../validations/brand/brand");

router.post(
  "/create",
  authentication,
  validation(createBrandSchema),
  brandController.createBrand
);

module.exports = router;
