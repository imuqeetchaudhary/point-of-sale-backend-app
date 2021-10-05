const makeModel = require("./model");
const modelSettings = require("../settings.utils");

function init(sequelize, DataTypes) {
  const User = makeModel(sequelize, DataTypes, modelSettings.user);

  return User;
}

module.exports = { init };
