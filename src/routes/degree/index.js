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

router.get("/get-all", authentication, degreeController.getAllDegree);

router.get("/get/:id", authentication, degreeController.getSingleDegree);

module.exports = router;
