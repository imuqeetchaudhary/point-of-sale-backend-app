const productTypeService = require("../../services/product-type");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createProductType = promise(async (req, res) => {
  const { description, alias } = req.body;
  const actionperformedBy = req.user.userId;

  const productType = await productTypeService.saveProductType({
    description,
    alias,
    actionperformedBy,
  });

  res
    .status(200)
    .json({ message: "Successfully created blood group", productType });
});

exports.getAllProductType = promise(async (req, res) => {
  const productType = await productTypeService.listAllProductType();
  res.status(200).json({ productType });
});

exports.getSingleProductType = promise(async (req, res) => {
  const { id } = req.params;

  const productType = await productTypeService.findById({ id });
  res.status(200).json({ productType });
});

exports.updateProductType = promise(async (req, res) => {
  const { id } = req.params;
  const productTypeId = id;
  const { description, alias } = req.body;
  const actionperformedBy = req.user.userId;

  const updateproductType = await productTypeService.updateProductType({
    productTypeId,
    description,
    alias,
    actionperformedBy,
  });

  res.status(200).json({ message: "Successfully updated product type" });
});

exports.deleteProductType = promise(async (req, res) => {
  const { id } = req.params;
  const productTypeId = id;

  const deleteproductType = await productTypeService.deleteProductType({
    productTypeId,
  });
  res.status(200).json({ message: "Successfully deleted product type" });
});
