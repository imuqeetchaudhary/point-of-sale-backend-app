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
const user = require("./user");
const menuAccessRoles = require("./menu-access-roles");
const role = require("./role");
const menu = require("./menu");

// make models
const User = user.makeModel(dbClient, DataTypes, modelSettings.user);
const Role = role.makeModel(dbClient, DataTypes, modelSettings.role);
const Menu = menu.makeModel(dbClient, DataTypes, modelSettings.menu);
const MenuAccessRoles = menuAccessRoles.makeModel(
  dbClient,
  DataTypes,
  modelSettings.menuAccessRoles
);
// const Menu = require("./menu")(dbClient, DataTypes, { User });
const UserAccessRoles = require("./user-access-roles")(dbClient, DataTypes, {
  User,
  Role,
});

// add relations with models
// Menu.hasMany(Menu, {
//   foreignKey: { name: "parent_id", allowNull: true },
//   onUpdate: "CASCADE",
//   onDelete: "NO ACTION",
// });

role.makeAssociations(
  { User, Role },
  null,
  modelSettings.userRelationWithModel
);
menu.makeAssociations(
  { User, Menu },
  modelSettings.menu,
  modelSettings.userRelationWithModel
);
menuAccessRoles.makeAssociations(
  { Role, Menu, MenuAccessRoles, User },
  modelSettings.menuAccessRoles,
  modelSettings.userRelationWithModel
);
// Role.belongsToMany(Menu, {
//   through: MenuAccessRoles,
//   foreignKey: "role_id",
//   otherKey: "menu_id",
// });
// Menu.belongsToMany(Role, {
//   through: MenuAccessRoles,
//   foreignKey: "menu_id",
//   otherKey: "role_id",
// });
// MenuAccessRoles.belongsTo(Role, { foreignKey: "role_id" });
// MenuAccessRoles.belongsTo(Menu, { foreignKey: "menu_id" });

// Role.belongsToMany(Menu, {
//   through: MenuAccessRoles,
//   foreignKey: { name: "role_id", allowNull: false },
//   otherKey: "menu_id",
//   as: "menus",
// });
// Menu.belongsToMany(Role, {
//   through: MenuAccessRoles,
//   foreignKey: { name: "menu_id", allowNull: false },
//   otherKey: "role_id",
//   as: "roles",
// });

// assigns all models to db object
db.User = User;
db.Role = Role;
db.Menu = Menu;
db.UserAccessRoles = UserAccessRoles;
db.MenuAccessRoles = MenuAccessRoles;

module.exports = db;
