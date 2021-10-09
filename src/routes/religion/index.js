const express = require("express");
const router = express.Router();
const religionController = require("../../controllers/religion");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const { createReligionSchema } = require("../../validations/religion");

router.post(
  "/create",
  authentication,
  validation(createReligionSchema),
  religionController.createReligion
);

router.get("/get-all", authentication, religionController.getAllReligion);

module.exports = router;
