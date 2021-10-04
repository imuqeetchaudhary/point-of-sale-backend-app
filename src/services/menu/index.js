const db = require("../../models");
const menuUtils = require("./util");

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

module.exports = { saveMenu };
