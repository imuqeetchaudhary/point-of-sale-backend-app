const express = require("express");
const router = express.Router();
const relationTypeController = require("../../controllers/relation-type");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createRelationTypeSchema,
  updateRelationTypeSchema,
} = require("../../validations/relation-type");

router.post(
  "/create",
  authentication,
  validation(createRelationTypeSchema),
  relationTypeController.createRelationType
);

router.get(
  "/get-all",
  authentication,
  relationTypeController.getAllRelationType
);

router.get(
  "/get/:id",
  authentication,
  relationTypeController.getSingleRelationType
);

router.patch(
  "/update/:id",
  authentication,
  validation(updateRelationTypeSchema),
  relationTypeController.updateRelationType
);

router.delete(
  "/delete/:id",
  authentication,
  relationTypeController.deleteRelationType
);

module.exports = router;
