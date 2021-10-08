const express = require("express");
const router = express.Router();
const bloodGroupController = require("../../controllers/blood-group");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const { createBloodGroupSchema } = require("../../validations/blood-group");

router.post(
  "/create",
  authentication,
  validation(createBloodGroupSchema),
  bloodGroupController.createBloodGroup
);

module.exports = router;
