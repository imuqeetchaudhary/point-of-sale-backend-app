const makeModel = require("./model");
const makeAssociations = require("./relation");
const modelSettings = require("../settings.utils");

function init(sequelize, DataTypes, { User }) {
  const ItemCategory = makeModel(
    sequelize,
    DataTypes,
    modelSettings.itemCategory
  );
  makeAssociations(
    { User, ItemCategory },
    modelSettings.itemCategory,
    modelSettings.userRelationWithModel
  );

  return ItemCategory;
}

module.exports = { init };
