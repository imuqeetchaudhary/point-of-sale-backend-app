const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.savePaymentTerm = async ({
  description,
  alias,
  iDays,
  actionperformedBy,
}) => {
  const paymentTerm = {
    description,
    alias,
    iDays,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newPaymentTerm = await db.PaymentTerm.create({ ...paymentTerm });
    return newPaymentTerm;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err))
      throw new Exceptions.BadRequest({
        message: "Payment Term already exists",
      });
    throw err;
  }
};

exports.listAllPaymentTerms = async () => {
  return db.PaymentTerm.findAll({
    ..._prop.hideFieldsCondition(),
  });
};

exports.findById = ({ id }) => {
  return db.PaymentTerm.findByPk(id, _prop.hideFieldsCondition());
};

exports.updatePaymentTerm = async ({
  paymentTermId,
  description,
  alias,
  iDays,
  actionperformedBy,
}) => {
  const paymentTerm = {
    description,
    alias,
    iDays,
    updatedBy: actionperformedBy,
  };

  try {
    const updatePaymentTerm = await db.PaymentTerm.update(
      { ...paymentTerm },
      { where: { paymentTermId } }
    );

    if (dbUtils.isRecordFound(updatePaymentTerm)) {
      throw new Exceptions.NotFound({ message: "Payment Term Not Found" });
    }
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: "Payment Term Already Exists",
      });
    }
    throw err;
  }
};

exports.deletePaymentTerm = async ({ paymentTermId }) => {
  try {
    const deletePaymentTerm = await db.PaymentTerm.destroy({
      where: { paymentTermId },
    });
  } catch (err) {
    if (dbUtils.isFkFailed(err)) {
      throw new Exceptions.BadRequest({
        message: "Can't delete payment term unless delete all its reference",
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
