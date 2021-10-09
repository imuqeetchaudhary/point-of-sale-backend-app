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

module.exports = router;
