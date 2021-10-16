const vendorService = require("../../services/vendor");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createVendor = promise(async (req, res) => {
  const {
    description,
    alias,
    address,
    countryId,
    cityId,
    sRegStNo,
    sItNo,
    phone,
    fax,
    cell,
    email,
    isWht,
    whtTax,
    iWhtTax,
    isCreditLimit,
    creditAmount,
    contactPerson,
    iAccountId,
  } = req.body;
  const actionperformedBy = req.user.userId;

  const vendor = await vendorService.saveVendor({
    description,
    alias,
    address,
    countryId,
    cityId,
    sRegStNo,
    sItNo,
    phone,
    fax,
    cell,
    email,
    isWht,
    whtTax,
    iWhtTax,
    isCreditLimit,
    creditAmount,
    contactPerson,
    iAccountId,
    actionperformedBy,
  });
  res.status(200).json({ message: "Successfully created vendor", vendor });
});

exports.getAllVendors = promise(async (req, res) => {
  const vendor = await vendorService.listAllVendors();
  res.status(200).json({ vendor });
});

exports.getSingllVendor = promise(async (req, res) => {
  const { id } = req.params;

  const vendor = await vendorService.findById({ id });
  res.status(200).json({ vendor });
});

exports.updateVendor = promise(async (req, res) => {
  const { id } = req.params;
  const vendorId = id;
  const {
    description,
    alias,
    address,
    countryId,
    cityId,
    sRegStNo,
    sItNo,
    phone,
    fax,
    cell,
    email,
    isWht,
    whtTax,
    iWhtTax,
    isCreditLimit,
    creditAmount,
    contactPerson,
    iAccountId,
  } = req.body;
  const actionperformedBy = req.user.userId;

  const updatevendor = await vendorService.updateVendor({
    vendorId,
    description,
    alias,
    address,
    countryId,
    cityId,
    sRegStNo,
    sItNo,
    phone,
    fax,
    cell,
    email,
    isWht,
    whtTax,
    iWhtTax,
    isCreditLimit,
    creditAmount,
    contactPerson,
    iAccountId,
    actionperformedBy,
  });

  res.status(200).json({ message: "Successfully updated vendor" });
});

exports.deleteVendor = promise(async (req, res) => {
  const { id } = req.params;
  const vendorId = id;

  const deletevendor = await vendorService.deleteVendor({ vendorId });
  res.status(200).json({ message: "Successfully deleted vendor" });
});
