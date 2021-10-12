const express = require("express");
const router = express.Router();
const quaLevelsController = require("../../controllers/qua-levels");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const { createQUALevelsSchema } = require("../../validations/qua-levels");

router.post(
  "/create",
  authentication,
  validation(createQUALevelsSchema),
  quaLevelsController.createQUALevels
);

router.get("/get-all", authentication, quaLevelsController.getAllQUALevels);

module.exports = router;
