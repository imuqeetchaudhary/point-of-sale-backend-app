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
}

module.exports = makeAssociations;
