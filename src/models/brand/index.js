const makeModel = require("./model");
const makeAssociations = require("./relation");
const modelSettings = require("../settings.utils");

function init(sequelize, DataTypes, { User }) {
  const Brand = makeModel(sequelize, DataTypes, modelSettings.brand);
  makeAssociations(
    { User, Brand },
    modelSettings.brand,
    modelSettings.userRelationWithModel
  );

  return Brand;
}

module.exports = { init };
