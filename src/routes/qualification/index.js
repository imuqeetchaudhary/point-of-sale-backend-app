const express = require("express");
const router = express.Router();
const qualificationController = require("../../controllers/qualification");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createQualificationSchema,
  updateQualificationSchema,
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

router.get(
  "/get/:id",
  authentication,
  qualificationController.getSingleQualification
);

router.patch(
  "/update/:id",
  authentication,
  validation(updateQualificationSchema),
  qualificationController.updateQualification
);

router.delete(
  "/delete/:id",
  authentication,
  qualificationController.deleteQualification
);

module.exports = router;
