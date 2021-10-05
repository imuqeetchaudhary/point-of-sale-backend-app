const sequelize = require("sequelize");
const db = require("../../models");
const menuUtils = require("./util");
const utils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

async function listAllMenus() {
  return db.Menu.findAll({
    attributes: ["menuId", "description", "link", "icon", "parentId"],
  });
}

async function listAllMenusForRole({ roleId }) {
  return db.sequelize.query(
    menuUtils.queryForGetAndCheckMenuExistsForRole(roleId),
    { type: sequelize.QueryTypes.SELECT }
  );
}

async function saveMenu({ description, link, parentId, icon, createdBy }) {
  try {
    const menu = await db.Menu.create({
      description,
      link,
      parentId,
      icon,
      createdBy,
      updatedBy: createdBy,
    });
    return menu;
  } catch (err) {
    menuUtils.throwErrorWhenCreateOrUpdate(err);
    throw err;
  }
}

async function updateMenu({
  menuId,
  description,
  icon,
  link,
  parentId,
  updatedBy,
}) {
  try {
    const menu = await db.Menu.update(
      { description, icon, link, parentId, updatedBy },
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

module.exports = { listAllMenus, listAllMenusForRole, saveMenu, updateMenu };
