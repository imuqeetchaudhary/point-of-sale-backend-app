const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveProductType = async ({
  description,
  alias,
  actionperformedBy,
}) => {
  const productType = {
    description,
    alias,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newProductType = await db.ProductType.create({ ...productType });
    return newProductType;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err))
      throw new Exceptions.BadRequest({
        message: "Product Type already exists",
      });
    throw err;
  }
};

exports.listAllProductType = async () => {
  return db.ProductType.findAll({
    ..._prop.hideFieldsCondition(),
  });
};

exports.findById = ({ id }) => {
  return db.ProductType.findByPk(id, _prop.hideFieldsCondition());
};

exports.updateProductType = async ({
  productTypeId,
  description,
  alias,
  actionperformedBy,
}) => {
  const productType = {
    description,
    alias,
    updatedBy: actionperformedBy,
  };

  try {
    const updateProductType = await db.ProductType.update(
      { ...productType },
      { where: { productTypeId } }
    );

    if (dbUtils.isRecordFound(updateProductType)) {
      throw new Exceptions.NotFound({ message: "Product type Not Found" });
    }
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: "Product type Already Exists",
      });
    }
    throw err;
  }
};

exports.deleteProductType = async ({ productTypeId }) => {
  try {
    const deleteProductType = await db.ProductType.destroy({
      where: { productTypeId },
    });
  } catch (err) {
    if (dbUtils.isFkFailed(err)) {
      throw new Exceptions.BadRequest({
        message: "Can't delete Product type unless delete all its reference",
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
