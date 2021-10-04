const { Sequelize, DataTypes } = require("sequelize");

function init() {
  const sequelize = new Sequelize({
    username: "root",
    password: "root",
    database: "pos",
    host: "localhost",
    port: 3306,

    dialect: "mysql",
    logging: true,

    define: {
      freezeTableName: true,
    },
  });

  return () => sequelize;
}

const getDbClient = init();
const dbClient = getDbClient();

const db = {};

db.sequelize = dbClient;
const User = require("./user")(dbClient, DataTypes);
const Role = require("./role")(dbClient, DataTypes);

// add relations with models
// User.hasMany(Role, { foreignKey})

// assigns all models to db object
db.User = User;
db.Role = Role;

module.exports = db;
