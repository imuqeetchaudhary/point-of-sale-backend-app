const express = require("express");
const router = express.Router();
const religionController = require("../../controllers/religion");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createReligionSchema,
  updateReligionSchema,
} = require("../../validations/religion");

router.post(
  "/create",
  authentication,
  validation(createReligionSchema),
  religionController.createReligion
);

router.get("/get-all", authentication, religionController.getAllReligion);

router.get("/get/:id", authentication, religionController.getSingleReligion);

router.patch(
  "/update/:id",
  authentication,
  validation(updateReligionSchema),
  religionController.updateReligion
);

router.delete("/delete/:id", authentication, religionController.deleteReligion);

module.exports = router;
