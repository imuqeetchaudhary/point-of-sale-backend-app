const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveCustomer = async ({
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
}) => {
  const customer = {
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
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newCustomer = await db.Customer.create({ ...customer });
    return newCustomer;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "Customer already exists" });
    }
    throw err;
  }
};

exports.listAllCustomers = async () => {
  return db.Customer.findAll({
    ..._prop.hideFieldsCondition(),
  });
};

exports.findById = ({ id }) => {
  return db.Customer.findByPk(id, _prop.hideFieldsCondition());
};

exports.updateCustomer = async ({
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
}) => {
  const customer = {
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
    updatedBy: actionperformedBy,
  };

  try {
    const updateCustomer = await db.Customer.update(
      { ...customer },
      { where: { customerId } }
    );

    if (dbUtils.isRecordFound(updateCustomer)) {
      throw new Exceptions.NotFound({ message: "Customer Not Found" });
    }
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: "Customer Already Exists",
      });
    }
    throw err;
  }
};

exports.deleteCustomer = async ({ customerId }) => {
  try {
    const deleteCustomer = await db.Customer.destroy({
      where: { customerId },
    });
  } catch (err) {
    if (dbUtils.isFkFailed(err)) {
      throw new Exceptions.BadRequest({
        message: "Can't delete Customer unless delete all its reference",
      });
    }
    throw err;
  }
};

const _prop = {
  HIDDEN_FIELDS: ["createdAt", "updatedAt"],
  hideFieldsCondition: function (...args) {
    return { attributes: { exclude: [...this.HIDDEN_FIELDS, ...args] } };
  },
};
