const customerService = require("../../services/customer");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createCustomer = promise(async (req, res) => {
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

  const customer = await customerService.saveCustomer({
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
  res.status(200).json({ message: "Successfully created customer", customer });
});

exports.getAllCustomers = promise(async (req, res) => {
  const customer = await customerService.listAllCustomers();
  res.status(200).json({ customer });
});

exports.getSingllCustomer = promise(async (req, res) => {
  const { id } = req.params;

  const customer = await customerService.findById({ id });
  res.status(200).json({ customer });
});

exports.updateCustomer = promise(async (req, res) => {
  const { id } = req.params;
  const customerId = id;
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

  const updatecustomer = await customerService.updateCustomer({
    customerId,
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

  res.status(200).json({ message: "Successfully updated customer" });
});

exports.deleteCustomer = promise(async (req, res) => {
  const { id } = req.params;
  const customerId = id;

  const deletecustomer = await customerService.deleteCustomer({ customerId });
  res.status(200).json({ message: "Successfully deleted customer" });
});
