const express = require("express");
const router = express.Router();
const bloodGroupController = require("../../controllers/blood-group");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createBloodGroupSchema,
  updateBloodGroupSchema,
} = require("../../validations/blood-group");

router.post(
  "/create",
  authentication,
  validation(createBloodGroupSchema),
  bloodGroupController.createBloodGroup
);

router.get("/get-all", authentication, bloodGroupController.getAllBloodGroup);

router.get(
  "/get/:id",
  authentication,
  bloodGroupController.getSingleBloodGroup
);

router.patch(
  "/update/:id",
  authentication,
  validation(updateBloodGroupSchema),
  bloodGroupController.updateBloodGroup
);

router.delete(
  "/delete/:id",
  authentication,
  bloodGroupController.deleteBloodGroup
);

module.exports = router;
