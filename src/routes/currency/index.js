const express = require("express");
const router = express.Router();
const currencyController = require("../../controllers/currency");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const { createCurrencySchema } = require("../../validations/currency");

router.post(
  "/create",
  authentication,
  validation(createCurrencySchema),
  currencyController.createCurrency
);

router.get("/get-all", authentication, currencyController.getAllCurrencies);

router.get("/get/:id", authentication, currencyController.getSingleCurrencies);

module.exports = router;
