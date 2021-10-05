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

// make models
const User = user.makeModel(dbClient, DataTypes);
const MenuAccessRoles = menuAccessRoles.makeModel(
  dbClient,
  DataTypes,
  modelSettings.menuAccessRoles
);
const Role = require("./role")(dbClient, DataTypes, { User });
const Menu = require("./menu")(dbClient, DataTypes, { User });
const UserAccessRoles = require("./user-access-roles")(dbClient, DataTypes, {
  User,
  Role,
});

// add relations with models
Menu.hasMany(Menu, {
  foreignKey: { name: "parent_id", allowNull: true },
  onUpdate: "CASCADE",
  onDelete: "NO ACTION",
});

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
