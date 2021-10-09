const express = require("express");
const router = express.Router();
const currencyController = require("../../controllers/currency");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createCurrencySchema,
  updateCurrencySchema,
} = require("../../validations/currency");

router.post(
  "/create",
  authentication,
  validation(createCurrencySchema),
  currencyController.createCurrency
);

router.get("/get-all", authentication, currencyController.getAllCurrencies);

router.get("/get/:id", authentication, currencyController.getSingleCurrencies);

router.patch(
  "/update/:id",
  authentication,
  validation(updateCurrencySchema),
  currencyController.updateCurrency
);

router.delete(
  "/delete/:id",
  authentication,
  currencyController.deleteCurrency
);

module.exports = router;
