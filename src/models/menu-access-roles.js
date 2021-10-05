function makeModel(sequelize, DataTypes, { User, Role, Menu }) {
  const MenuAccessRoles = sequelize.define(
    "MenuAccessRoles",
    {
      menuId: DataTypes.INTEGER.UNSIGNED,
      roleId: DataTypes.INTEGER.UNSIGNED,
      createdBy: DataTypes.INTEGER.UNSIGNED,
      updatedBy: DataTypes.INTEGER.UNSIGNED,
    },
    { underscored: true, tableName: "ad_menu_access_roles" }
  );

  return MenuAccessRoles;
}

// module.exports = (sequelize, DataTypes, { User, Role, Menu }) => {};

function makeAssociations({ Role, Menu, MenuAccessRoles, User }) {
  Role.belongsToMany(Menu, {
    through: MenuAccessRoles,
    as: "menu",
    foreignKey: "role_id",
    otherKey: "menu_id",
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });
  Menu.belongsToMany(Role, {
    through: MenuAccessRoles,
    as: "role",
    foreignKey: "menu_id",
    otherKey: "role_id",
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });
  MenuAccessRoles.belongsTo(Role, { foreignKey: "role_id" });
  MenuAccessRoles.belongsTo(Menu, { foreignKey: "menu_id" });

  User.hasMany(MenuAccessRoles, {
    as: "createdBy",
    foreignKey: { name: "created_by", allowNull: false },
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });
  User.hasMany(MenuAccessRoles, {
    as: "updatedBy",
    foreignKey: { name: "updated_by", allowNull: false },
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });
}

module.exports = { makeModel, makeAssociations };
