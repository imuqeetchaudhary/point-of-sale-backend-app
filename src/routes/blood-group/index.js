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

router.get("/get-all", authentication, bloodGroupController.getAllBloodGroup);

module.exports = router;
