const express = require("express");
const router = express.Router();
const customerController = require("../../controllers/customer");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createCustomerSchema,
  updateCustomerSchema,
} = require("../../validations/customer");

router.post(
  "/create",
  authentication,
  validation(createCustomerSchema),
  customerController.createCustomer
);

router.get("/get-all", authentication, customerController.getAllCustomers);

router.get("/get/:id", authentication, customerController.getSingllCustomer);

router.patch(
  "/update/:id",
  authentication,
  validation(updateCustomerSchema),
  customerController.updateCustomer
);

router.delete("/delete/:id", authentication, customerController.deleteCustomer);

module.exports = router;
