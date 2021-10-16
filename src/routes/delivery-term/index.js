const express = require("express");
const router = express.Router();
const deliveryTermController = require("../../controllers/delivery-term");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createDeliveryTermSchema,
  updateDeliveryTermSchema,
} = require("../../validations/delivery-term");

router.post(
  "/create",
  authentication,
  validation(createDeliveryTermSchema),
  deliveryTermController.createDeliveryTerm
);

router.get(
  "/get-all",
  authentication,
  deliveryTermController.getAllDeliveryTerm
);

router.get(
  "/get/:id",
  authentication,
  deliveryTermController.getSingleDeliveryTerm
);

router.patch(
  "/update/:id",
  authentication,
  validation(updateDeliveryTermSchema),
  deliveryTermController.updateDeliveryTerm
);

router.delete(
  "/delete/:id",
  authentication,
  deliveryTermController.deleteDeliveryTerm
);

module.exports = router;
