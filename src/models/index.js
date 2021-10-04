const config = require("config");
const { Sequelize, DataTypes } = require("sequelize");

function init() {
  const sequelize = new Sequelize({ ...config.get("db") });

  return () => sequelize;
}

const getDbClient = init();
const dbClient = getDbClient();

const db = {};

db.sequelize = dbClient;
const User = require("./user")(dbClient, DataTypes);
const Role = require("./role")(dbClient, DataTypes, { User });
const Menu = require("./menu")(dbClient, DataTypes, { User });
const UserAccessRoles = require("./user-access-roles")(dbClient, DataTypes, {
  User,
  Role,
});
const MenuAccessRoles = require("./menu-access-roles")(dbClient, DataTypes, {
  User,
  Role,
  Menu,
});

// add relations with models
Menu.hasMany(Menu, {
  foreignKey: { name: "parent_id", allowNull: true },
  onUpdate: "CASCADE",
  onDelete: "NO ACTION",
});

// assigns all models to db object
db.User = User;
db.Role = Role;
db.Menu = Menu;
db.UserAccessRoles = UserAccessRoles;
db.MenuAccessRoles = MenuAccessRoles;

module.exports = db;
