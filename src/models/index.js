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
db.User = require("./user")(dbClient, DataTypes);
db.Role = require("./role")(dbClient, DataTypes);

module.exports = db;
