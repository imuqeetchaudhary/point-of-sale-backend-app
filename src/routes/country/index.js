const express = require("express");
const router = express.Router();
const countryController = require("../../controllers/country");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createCountrySchema,
  updateCountrySchema,
} = require("../../validations/country");

router.post(
  "/create",
  authentication,
  validation(createCountrySchema),
  countryController.createCountry
);

router.get("/get-all", authentication, countryController.getAllCountry);

router.get("/get/:id", authentication, countryController.getSingleCountry);

router.patch(
  "/update/:id",
  authentication,
  validation(updateCountrySchema),
  countryController.updateCountry
);

module.exports = router;
