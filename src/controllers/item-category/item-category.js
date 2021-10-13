const itemCategoryService = require("../../services/item-category/index");
const { promise } = require("../../middlewares/promise");
const Exceptions = require("../../utils/custom-exceptions");

exports.createItemCategory = promise(async (req, res) => {
  let { description, categoryCode, customCode, parentId } = req.body;
  const actionPerformBy = req.user.userId;

  if (parentId == 0) {
    parentId = null;
  }

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
});

exports.getAllItemCategory = promise(async (req, res) => {
  const itemCategory = await itemCategoryService.listAllItemCategories();
  res.status(200).json({ itemCategory });
});

exports.getSingleItemCategory = promise(async (req, res) => {
  const { id } = req.params;
  const categoryId = id;
  const itemCategory = await itemCategoryService.singleItemCategory({
    categoryId,
  });
  res.status(200).json({ itemCategory });
});

exports.updateItemCategory = promise(async (req, res) => {
  const { id } = req.params;
  const categoryId = id;
  const { description, parentId } = req.body;
  const actionPerformBy = req.user.userId;

  const updateItemCategory = await itemCategoryService.updateItemCategory({
    categoryId,
    description,
    parentId,
    actionPerformBy,
  });

  res.status(200).json({ message: "Successfully updated item category" });
});
