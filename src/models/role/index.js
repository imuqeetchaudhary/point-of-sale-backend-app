const makeModel = require("./model");
const makeAssociations = require("./relation");
const modelSettings = require("../settings.utils");

function init(sequelize, DataTypes, { User }) {
  const Role = makeModel(sequelize, DataTypes, modelSettings.role);
  makeAssociations(
    { User, Role },
    modelSettings.role,
    modelSettings.userRelationWithModel
  );

  return Role;
}

module.exports = { init };
