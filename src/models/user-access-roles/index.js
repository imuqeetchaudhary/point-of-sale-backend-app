const makeModel = require("./model");
const makeAssociations = require("./relation");
const modelSettings = require("../settings.utils");

function init(sequelize, DataTypes, { User, Role }) {
  const UserAccessRoles = makeModel(
    sequelize,
    DataTypes,
    modelSettings.userAccessRoles
  );
  makeAssociations(
    { User, Role, UserAccessRoles },
    modelSettings.userAccessRoles,
    modelSettings.userRelationWithModel
  );

  return UserAccessRoles;
}

module.exports = { init };
