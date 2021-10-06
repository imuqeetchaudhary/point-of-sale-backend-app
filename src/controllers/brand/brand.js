const brandService = require("../../services/brand/index");
const Exceptions = require("../../utils/custom-exceptions");

exports.createBrand = async (req, res) => {
  const { description } = req.body;
  const actionPerformBy = req.user.userId;

  const brand = await brandService.saveBrand({ description, actionPerformBy });
  res.status(200).json({ message: "Successfully created brand", brand });
};
