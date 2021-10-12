const express = require("express");
const router = express.Router();
const degreeController = require("../../controllers/degree");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const { createDegreeSchema } = require("../../validations/degree");

router.post(
  "/create",
  authentication,
  validation(createDegreeSchema),
  degreeController.createDegree
);

module.exports = router;
