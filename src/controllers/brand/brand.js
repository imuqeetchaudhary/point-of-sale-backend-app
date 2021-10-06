const brandService = require("../../services/brand/index");
const Exceptions = require("../../utils/custom-exceptions");

exports.createBrand = async (req, res) => {
  const { description } = req.body;
  const actionPerformBy = req.user.userId;

  const brand = await brandService.saveBrand({ description, actionPerformBy });
  res.status(200).json({ message: "Successfully created brand", brand });
};

exports.getAllBrands = async (req, res) => {
  const brand = await brandService.listAllBrands();
  res.status(200).json({ brand });
};

exports.getSingleBrands = async (req, res) => {
  const { id } = req.params;
  const brandId = id;
  
  const brand = await brandService.singleBrand({ brandId });
  res.status(200).json({ brand });
};
