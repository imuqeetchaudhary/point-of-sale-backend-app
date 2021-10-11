const express = require("express");
const router = express.Router();
const cityController = require("../../controllers/city");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createCitySchema,
  updateCitySchema,
} = require("../../validations/city");

router.post(
  "/create",
  authentication,
  validation(createCitySchema),
  cityController.createCity
);

router.get("/get-all", authentication, cityController.getAllCities);

router.get("/get/:id", authentication, cityController.getSingleCity);

router.patch(
  "/update/:id",
  authentication,
  validation(updateCitySchema),
  cityController.updateCity
);

module.exports = router;
