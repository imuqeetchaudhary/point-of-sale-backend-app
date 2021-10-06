const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

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

module.exports = { saveItemCategory };
