const makeModel = require("./model");
const makeAssociations = require("./relation");
const modelSettings = require("../settings.utils");

function init(sequelize, DataTypes, { User, Role, Menu }) {
  const MenuAccessRoles = makeModel(
    sequelize,
    DataTypes,
    modelSettings.menuAccessRoles
  );
  makeAssociations(
    { User, Role, Menu, MenuAccessRoles },
    modelSettings.menuAccessRoles,
    modelSettings.userRelationWithModel
  );

  return MenuAccessRoles;
}

module.exports = { init };
