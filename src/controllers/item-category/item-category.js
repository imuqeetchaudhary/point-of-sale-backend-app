const itemCategoryService = require("../../services/item-category/index");
const Exceptions = require("../../utils/custom-exceptions");

exports.createItemCategory = async (req, res) => {
  const { description, categoryCode, customCode, parentId } = req.body;
  const actionPerformBy = req.user.userId;

  const itemCategory = await itemCategoryService.saveItemCategory({
    description,
    categoryCode,
    customCode,
    parentId,
    actionPerformBy,
  });

  res
    .status(200)
    .json({ message: "Successfully created item category", itemCategory });
};
