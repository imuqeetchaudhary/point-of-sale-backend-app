const express = require("express");
const router = express.Router();
const relationTypeController = require("../../controllers/relation-type");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const { createRelationTypeSchema } = require("../../validations/relation-type");

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

module.exports = router;
