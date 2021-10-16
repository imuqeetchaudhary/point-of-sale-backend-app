const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveDeliveryTerm = async ({
  description,
  alias,
  iDays,
  actionperformedBy,
}) => {
  const deliveryTerm = {
    description,
    alias,
    iDays,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newDeliveryTerm = await db.DeliveryTerm.create({ ...deliveryTerm });
    return newDeliveryTerm;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err))
      throw new Exceptions.BadRequest({
        message: "Delivery Term already exists",
      });
    throw err;
  }
};

exports.listAllDeliveryTerms = async () => {
  return db.DeliveryTerm.findAll({
    ..._prop.hideFieldsCondition(),
  });
};

exports.findById = ({ id }) => {
  return db.DeliveryTerm.findByPk(id, _prop.hideFieldsCondition());
};

exports.updateDeliveryTerm = async ({
  deliveryTermId,
  description,
  alias,
  iDays,
  actionperformedBy,
}) => {
  const deliveryTerm = {
    description,
    alias,
    iDays,
    updatedBy: actionperformedBy,
  };

  try {
    const updateDeliveryTerm = await db.DeliveryTerm.update(
      { ...deliveryTerm },
      { where: { deliveryTermId } }
    );

    if (dbUtils.isRecordFound(updateDeliveryTerm)) {
      throw new Exceptions.NotFound({ message: "Delivery Term Not Found" });
    }
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: "Delivery Term Already Exists",
      });
    }
    throw err;
  }
};

exports.deleteDeliveryTerm = async ({ deliveryTermId }) => {
  try {
    const deleteDeliveryTerm = await db.DeliveryTerm.destroy({
      where: { deliveryTermId },
    });
  } catch (err) {
    if (dbUtils.isFkFailed(err)) {
      throw new Exceptions.BadRequest({
        message: "Can't delete delivery term unless delete all its reference",
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
