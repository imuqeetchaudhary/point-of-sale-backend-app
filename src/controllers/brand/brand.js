const brandService = require("../../services/brand/index");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createBrand = promise(async (req, res) => {
  const { description } = req.body;
  const actionPerformBy = req.user.userId;

  const brand = await brandService.saveBrand({ description, actionPerformBy });
  res.status(200).json({ message: "Successfully created brand", brand });
});

exports.getAllBrands = promise(async (req, res) => {
  const brand = await brandService.listAllBrands();
  res.status(200).json({ brand });
});

exports.getSingleBrands = promise(async (req, res) => {
  const { id } = req.params;
  const brandId = id;

  const brand = await brandService.singleBrand({ brandId });
  res.status(200).json({ brand });
});

exports.updateBrand = promise(async (req, res) => {
  const { id } = req.params;
  const { description } = req.body;
  const brandId = id;
  const actionPerformBy = req.user.userId;

  const updateBrand = brandService.updateBrand({
    brandId,
    description,
    actionPerformBy,
  });
  res.status(200).json({ message: "Successfully updated brand" });
});

exports.deleteBrand = promise(async (req, res) => {
  const { id } = req.params;
  const brandId = id;

  const deleteBrand = await brandService.deleteBrand({ brandId });
  res.status(200).json({ message: "Successfully deleted brand" });
});
