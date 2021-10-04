const db = require("../../models");
const menuUtils = require("./util");
const utils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

async function saveMenu({ description, link, parentId, createdBy }) {
  try {
    const menu = await db.Menu.create({
      description,
      link,
      parentId,
      createdBy,
      updatedBy: createdBy,
    });
    return menu;
  } catch (err) {
    menuUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

async function updateMenu({ menuId, description, link, parentId, updatedBy }) {
  try {
    const menu = await db.Menu.update(
      { description, link, parentId, updatedBy },
      { where: { menuId } }
    );

    if (utils.isRecordFound(menu)) {
      throw new Exceptions.NotFound({ message: "Menu is not found" });
    }
  } catch (err) {
    menuUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

module.exports = { saveMenu, updateMenu };
