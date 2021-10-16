const express = require("express");
const router = express.Router();
const paymentTermController = require("../../controllers/payment-term");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createPaymentTermSchema,
  updatePaymentTermSchema,
} = require("../../validations/payment-term");

router.post(
  "/create",
  authentication,
  validation(createPaymentTermSchema),
  paymentTermController.createPaymentTerm
);

router.get("/get-all", authentication, paymentTermController.getAllPaymentTerm);

router.get(
  "/get/:id",
  authentication,
  paymentTermController.getSinglePaymentTerm
);

router.patch(
  "/update/:id",
  authentication,
  validation(updatePaymentTermSchema),
  paymentTermController.updatePaymentTerm
);

router.delete(
  "/delete/:id",
  authentication,
  paymentTermController.deletePaymentTerm
);

module.exports = router;
