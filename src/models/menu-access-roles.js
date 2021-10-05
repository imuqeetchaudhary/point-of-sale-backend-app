function makeModel(sequelize, DataTypes, settings) {
  const MenuAccessRoles = sequelize.define(
    settings.modelName,
    {
      menuId: DataTypes.INTEGER.UNSIGNED,
      roleId: DataTypes.INTEGER.UNSIGNED,
      createdBy: DataTypes.INTEGER.UNSIGNED,
      updatedBy: DataTypes.INTEGER.UNSIGNED,
    },
    { underscored: true, tableName: settings.tableName }
  );

  return MenuAccessRoles;
}

// module.exports = (sequelize, DataTypes, { User, Role, Menu }) => {};

function makeAssociations(
  { Role, Menu, MenuAccessRoles, User },
  settings,
  userAssociationWithOtherModel
) {
  Role.belongsToMany(Menu, {
    through: MenuAccessRoles,
    as: settings.alias.asMenu,
    foreignKey: "roleId",
    otherKey: "menuId",
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });
  Menu.belongsToMany(Role, {
    through: MenuAccessRoles,
    as: settings.alias.asRole,
    foreignKey: "menuId",
    otherKey: "roleId",
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });
  MenuAccessRoles.belongsTo(Role, { foreignKey: "roleId" });
  MenuAccessRoles.belongsTo(Menu, { foreignKey: "menuId" });

  userAssociationWithOtherModel(User, MenuAccessRoles, { isCreate: true });
  userAssociationWithOtherModel(User, MenuAccessRoles, { isCreate: false });

  // User.hasMany(MenuAccessRoles, {
  //   as: "createdBy",
  //   foreignKey: { name: "created_by", allowNull: false },
  //   onUpdate: "CASCADE",
  //   onDelete: "NO ACTION",
  // });
  // User.hasMany(MenuAccessRoles, {
  //   as: "updatedBy",
  //   foreignKey: { name: "updated_by", allowNull: false },
  //   onUpdate: "CASCADE",
  //   onDelete: "NO ACTION",
  // });
}

module.exports = { makeModel, makeAssociations };
