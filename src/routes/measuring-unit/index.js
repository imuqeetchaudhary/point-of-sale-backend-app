const express = require("express");
const router = express.Router();
const measuringUnitController = require("../../controllers/measuring-unit");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createMeasuringUnitSchema,
  updateMeasuringUnitSchema,
} = require("../../validations/measuring-unit");

router.post(
  "/create",
  authentication,
  validation(createMeasuringUnitSchema),
  measuringUnitController.createMeasuringUnit
);

router.get(
  "/get-all",
  authentication,
  measuringUnitController.getAllMeasuringUnit
);

router.get(
  "/get/:id",
  authentication,
  measuringUnitController.getSingleMeasuringUnit
);

router.patch(
  "/update/:id",
  authentication,
  validation(updateMeasuringUnitSchema),
  measuringUnitController.updateMeasuringUnit
);

router.delete(
  "/delete/:id",
  authentication,
  measuringUnitController.deleteMeasuringUnit
);

module.exports = router;
