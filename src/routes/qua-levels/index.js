const express = require("express");
const router = express.Router();
const quaLevelsController = require("../../controllers/qua-levels");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createQUALevelsSchema,
  updateQUALevelsSchema,
} = require("../../validations/qua-levels");

router.post(
  "/create",
  authentication,
  validation(createQUALevelsSchema),
  quaLevelsController.createQUALevels
);

router.get("/get-all", authentication, quaLevelsController.getAllQUALevels);

router.get("/get/:id", authentication, quaLevelsController.getSingleQUALevel);

router.patch(
  "/update/:id",
  authentication,
  validation(updateQUALevelsSchema),
  quaLevelsController.updateQUALevels
);

router.delete(
  "/delete/:id",
  authentication,
  quaLevelsController.deleteQUALevels
);

module.exports = router;
