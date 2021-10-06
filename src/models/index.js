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

const user = require("./user/index");
const role = require("./role/index");
const menu = require("./menu/index");
const menuAccessRoles = require("./menu-access-roles/index");
const userAccessRoles = require("./user-access-roles/index");
const brand = require("./brand/index");

const User = user.init(dbClient, DataTypes);
const Role = role.init(dbClient, DataTypes, { User });
const Menu = menu.init(dbClient, DataTypes, { User });
const MenuAccessRoles = menuAccessRoles.init(dbClient, DataTypes, {
  User,
  Role,
  Menu,
});
const UserAccessRoles = userAccessRoles.init(dbClient, DataTypes, {
  User,
  Role,
});
const Brand = brand.init(dbClient, DataTypes, { User });

db.User = User;
db.Role = Role;
db.Menu = Menu;
db.MenuAccessRoles = MenuAccessRoles;
db.UserAccessRoles = UserAccessRoles;
db.Brand = Brand;

module.exports = db;
