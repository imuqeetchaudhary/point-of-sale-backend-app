const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveProduct = async ({
  description,
  alias,
  categoryId,
  unitInId,
  unitOutId,
  barcode,
  picture,
  itHeadUrdu,
  itMinLevel,
  itMaxLevel,
  itRoLevel,
  itRoQty,
  itRate,
  isSerialized,
  sTaxRate,
  inUnit,
  outUnit,
  pType,
  pType1,
  bargen,
  brandId,
  isStocked,
  isFinished,
  productTypeId,
  intCode,
  openBal,
  hsCode,
  actionperformedBy,
}) => {
  const product = {
    description,
    alias,
    categoryId,
    unitInId,
    unitOutId,
    barcode,
    picture,
    itHeadUrdu,
    itMinLevel,
    itMaxLevel,
    itRoLevel,
    itRoQty,
    itRate,
    isSerialized,
    sTaxRate,
    inUnit,
    outUnit,
    pType,
    pType1,
    bargen,
    brandId,
    isStocked,
    isFinished,
    productTypeId,
    intCode,
    openBal,
    hsCode,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newProduct = await db.Product.create({ ...product });
    return newProduct;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "Product already exists" });
    }
    throw err;
  }
};

exports.listAllProduct = async () => {
  return db.Product.findAll({ ..._prop.hideFieldsCondition() });
};

exports.findByPk = async ({ id }) => {
  return db.Product.findByPk(
    id,
    {
      include: [
        db.ItemCategory,
        db.ProductType,
        db.Brand,
        { model: db.MeasuringUnit, as: "unitIn" },
        { model: db.MeasuringUnit, as: "unitOut" },
      ],
    },
    _prop.hideFieldsCondition()
  );
};

exports.updateProduct = async ({
  productId,
  description,
  alias,
  categoryId,
  unitInId,
  unitOutId,
  barcode,
  picture,
  itHeadUrdu,
  itMinLevel,
  itMaxLevel,
  itRoLevel,
  itRoQty,
  itRate,
  isSerialized,
  sTaxRate,
  inUnit,
  outUnit,
  pType,
  pType1,
  bargen,
  brandId,
  isStocked,
  isFinished,
  productTypeId,
  intCode,
  openBal,
  hsCode,
  actionperformedBy,
}) => {
  const product = {
    description,
    alias,
    categoryId,
    unitInId,
    unitOutId,
    barcode,
    picture,
    itHeadUrdu,
    itMinLevel,
    itMaxLevel,
    itRoLevel,
    itRoQty,
    itRate,
    isSerialized,
    sTaxRate,
    inUnit,
    outUnit,
    pType,
    pType1,
    bargen,
    brandId,
    isStocked,
    isFinished,
    productTypeId,
    intCode,
    openBal,
    hsCode,
    updatedBy: actionperformedBy,
  };

  try {
    const updateProduct = await db.Product.update(
      { ...product },
      { where: { productId } }
    );

    if (dbUtils.isRecordFound(updateProduct)) {
      throw new Exceptions.NotFound({ message: "Product Not Found" });
    }
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "Product Already Exists" });
    }
    throw err;
  }
};

exports.deleteProduct = async ({ productId }) => {
  try {
    const deleteProduct = await db.Product.destroy({ where: { productId } });
    if (dbUtils.isRecordFound(deleteProduct)) {
      throw new Exceptions.NotFound({ message: "Product not found" });
    }
  } catch (err) {
    if (dbUtils.isFkFailed(err)) {
      throw new Exceptions.BadRequest({
        message: "Cann't delete Product unless delete all its reference",
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
