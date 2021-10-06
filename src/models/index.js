const config = require("config");
const { Sequelize, DataTypes } = require("sequelize");
const modelSettings = require("./settings.utils");

function init() {
  const sequelize = new Sequelize({ ...config.get("db") });
  return () => sequelize;
}
const getDbClient = init();
const dbClient = getDbClient();

const db = {};
db.sequelize = dbClient;

// imports all models
// const user = require("./user");
// const role = require("./role");
// const menu = require("./menu");
// const menuAccessRoles = require("./menu-access-roles");
// const userAccessRoles = require("./user-access-roles");
// const brand = require("./brand");
const user = require("./user/index");
const role = require("./role/index");
const menu = require("./menu/index");
const menuAccessRoles = require("./menu-access-roles/index");
const userAccessRoles = require("./user-access-roles/index");
const brand = require("./brand/index");

// make models
// const User = user.makeModel(dbClient, DataTypes, modelSettings.user);

// const Role = role.makeModel(dbClient, DataTypes, modelSettings.role);
// const Menu = menu.makeModel(dbClient, DataTypes, modelSettings.menu);
// const MenuAccessRoles = menuAccessRoles.makeModel(
//   dbClient,
//   DataTypes,
//   modelSettings.menuAccessRoles
// );
// const UserAccessRoles = userAccessRoles.makeModel(
//   dbClient,
//   DataTypes,
//   modelSettings.userAccessRoles
// );
// const Brand = brand.makeModel(dbClient, DataTypes, modelSettings.brand);
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

// make relations
// role.makeAssociations(
//   { User, Role },
//   null,
//   modelSettings.userRelationWithModel
// );
// menu.makeAssociations(
//   { User, Menu },
//   modelSettings.menu,
//   modelSettings.userRelationWithModel
// );
// menuAccessRoles.makeAssociations(
//   { Role, Menu, MenuAccessRoles, User },
//   modelSettings.menuAccessRoles,
//   modelSettings.userRelationWithModel
// );
// userAccessRoles.makeAssociations(
//   { User, Role, UserAccessRoles },
//   modelSettings.userAccessRoles,
//   modelSettings.userRelationWithModel
// );
// brand.makeAssociations(
//   { User, Brand },
//   modelSettings.brand,
//   modelSettings.userRelationWithModel
// );

// assigns all models to db object
db.User = User;
db.Role = Role;
db.Menu = Menu;
db.MenuAccessRoles = MenuAccessRoles;
db.UserAccessRoles = UserAccessRoles;
db.Brand = Brand;

module.exports = db;
