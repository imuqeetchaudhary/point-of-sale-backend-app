const productService = require("../../services/product");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createProduct = promise(async (req, res) => {
  const {
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
  } = req.body;
  const actionperformedBy = req.user.userId;

  const product = await productService.saveProduct({
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
  });
  res.status(200).json({ message: "Successfully created product", product });
});

exports.getAllProduct = promise(async (req, res) => {
  const product = await productService.listAllProduct();
  res.status(200).json({ product });
});

exports.getSingleProduct = promise(async (req, res) => {
  const { id } = req.params;

  const product = await productService.findByPk({ id });
  res.status(200).json({ product });
});

exports.updateProduct = promise(async (req, res) => {
  const { id } = req.params;
  const productId = id;
  const {
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
  } = req.body;
  const actionperformedBy = req.user.userId;

  const updateproduct = await productService.updateProduct({
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
  });

  res.status(200).json({ message: "Successfully updated product" });
});

exports.deleteProduct = promise(async (req, res) => {
  const { id } = req.params;
  const productId = id;

  const deleteproduct = await productService.deleteProduct({ productId });
  res.status(200).json({ message: "Successfully deleted product" });
});
