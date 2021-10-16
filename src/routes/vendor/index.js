const express = require("express");
const router = express.Router();
const vendorController = require("../../controllers/vendor");
const { validation } = require("../../middlewares/validation");
const { authentication } = require("../../middlewares/isAuth");
const {
  createVendorSchema,
  updateVendorSchema,
} = require("../../validations/vendor");

router.post(
  "/create",
  authentication,
  validation(createVendorSchema),
  vendorController.createVendor
);

router.get("/get-all", authentication, vendorController.getAllVendors);

router.get("/get/:id", authentication, vendorController.getSingllVendor);

router.patch(
  "/update/:id",
  authentication,
  validation(updateVendorSchema),
  vendorController.updateVendor
);

router.delete("/delete/:id", authentication, vendorController.deleteVendor);

module.exports = router;
