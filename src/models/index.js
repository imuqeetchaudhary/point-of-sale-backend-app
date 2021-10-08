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

const user = require("./user");
const role = require("./role");
const menu = require("./menu");
const menuAccessRoles = require("./menu-access-roles");
const userAccessRoles = require("./user-access-roles");
const brand = require("./brand");
const itemCategory = require("./item-category");
const bloodgroup = require("./blood-group");

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
const ItemCategory = itemCategory.init(dbClient, DataTypes, { User });
const BloodGroup = bloodgroup.init(dbClient, DataTypes);

db.User = User;
db.Role = Role;
db.Menu = Menu;
db.MenuAccessRoles = MenuAccessRoles;
db.UserAccessRoles = UserAccessRoles;
db.Brand = Brand;
db.ItemCategory = ItemCategory;
db.BloodGroup = BloodGroup;

module.exports = db;
