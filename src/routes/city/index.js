const express = require("express");
const router = express.Router();
const cityController = require("../../controllers/city");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const { createCitySchema } = require("../../validations/city");

router.post(
  "/create",
  authentication,
  validation(createCitySchema),
  cityController.createCity
);

module.exports = router;
