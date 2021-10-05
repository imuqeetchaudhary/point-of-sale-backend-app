const makeModel = require("./model");
const makeAssociations = require("./relation");
const modelSettings = require("../settings.utils");

function init(sequelize, DataTypes, { User }) {
  const Menu = makeModel(sequelize, DataTypes, modelSettings.menu);
  makeAssociations(
    { User, Menu },
    modelSettings.menu,
    modelSettings.userRelationWithModel
  );

  return Menu;
}

module.exports = { init };
