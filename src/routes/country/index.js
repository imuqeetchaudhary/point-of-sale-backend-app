const express = require("express");
const router = express.Router();
const countryController = require("../../controllers/country");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const { createCountrySchema } = require("../../validations/country");

router.post(
  "/create",
  authentication,
  validation(createCountrySchema),
  countryController.createCountry
);

module.exports = router;
