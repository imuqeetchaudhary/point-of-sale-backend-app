const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveVendor = async ({
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
  const vendor = {
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
    const newVendor = await db.Vendor.create({ ...vendor });
    return newVendor;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "Vendor already exists" });
    }
    throw err;
  }
};

exports.listAllVendors = async () => {
  return db.Vendor.findAll({
    ..._prop.hideFieldsCondition(),
  });
};

exports.findById = ({ id }) => {
  return db.Vendor.findByPk(id, _prop.hideFieldsCondition());
};

exports.updateVendor = async ({
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
}) => {
  const vendor = {
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
    const updateVendor = await db.Vendor.update(
      { ...vendor },
      { where: { vendorId } }
    );

    if (dbUtils.isRecordFound(updateVendor)) {
      throw new Exceptions.NotFound({ message: "Vendor Not Found" });
    }
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: "Vendor Already Exists",
      });
    }
    throw err;
  }
};

exports.deleteVendor = async ({ vendorId }) => {
  try {
    const deleteVendor = await db.Vendor.destroy({
      where: { vendorId },
    });
  } catch (err) {
    if (dbUtils.isFkFailed(err)) {
      throw new Exceptions.BadRequest({
        message: "Can't delete vendor unless delete all its reference",
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
