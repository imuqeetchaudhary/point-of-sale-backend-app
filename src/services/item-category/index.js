const db = require("../../models");
const categoryUtils = require("./utils");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

async function listAllItemCategories() {
  return db.ItemCategory.findAll({
    attributes: categoryUtils.INCLUDED_FIELDS,
  });
}

async function singleItemCategory({ categoryId }) {
  return db.ItemCategory.findByPk(categoryId, {
    attributes: categoryUtils.INCLUDED_FIELDS,
  });
}

async function saveItemCategory({
  description,
  categoryCode,
  customCode,
  parentId,
  actionPerformBy,
}) {
  const itemCategory = {
    description,
    categoryCode,
    customCode,
    parentId,
    createdBy: actionPerformBy,
    updatedBy: actionPerformBy,
  };

  try {
    const newItemCategory = await db.ItemCategory.create(itemCategory);
    return newItemCategory;
  } catch (err) {
    if (dbUtils.isFkFailed(err))
      throw new Exceptions.BadRequest({
        message: "Maybe parentId or user who perform this action is not found",
      });
    else if (dbUtils.isRecordDuplicate(err))
      throw new Exceptions.BadRequest({
        message: "Category code must be unique",
      });

    throw err;
  }
}

async function updateItemCategory({
  categoryId,
  description,
  parentId,
  actionPerformBy,
}) {
  const itemCategory = { description, parentId, updatedBy: actionPerformBy };

  try {
    const updatedCategory = await db.ItemCategory.update(itemCategory, {
      where: { categoryId },
    });

    if (dbUtils.isRecordFound(updatedCategory))
      throw new Exceptions.NotFound({ message: "Item category is not found" });
  } catch (err) {
    if (dbUtils.isFkFailed(err))
      throw new Exceptions.BadRequest({
        message: "The user who perform this action not found",
      });

    throw err;
  }
}

module.exports = {
  listAllItemCategories,
  singleItemCategory,
  saveItemCategory,
  updateItemCategory,
};
