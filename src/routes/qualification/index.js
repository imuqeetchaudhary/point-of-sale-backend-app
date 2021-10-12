const express = require("express");
const router = express.Router();
const qualificationController = require("../../controllers/qualification");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createQualificationSchema,
} = require("../../validations/qualification");

router.post(
  "/create",
  authentication,
  validation(createQualificationSchema),
  qualificationController.createQualification
);

router.get(
  "/get-all",
  authentication,
  qualificationController.getAllQualifications
);

module.exports = router;
