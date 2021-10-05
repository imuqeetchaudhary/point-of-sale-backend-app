function makeModel(sequelize, DataTypes, settings) {
  const UserAccessRoles = sequelize.define(
    settings.modelName,
    {
      userId: DataTypes.INTEGER.UNSIGNED,
      roleId: DataTypes.INTEGER.UNSIGNED,
      createdBy: DataTypes.INTEGER.UNSIGNED,
      updatedBy: DataTypes.INTEGER.UNSIGNED,
    },
    { underscored: true, tableName: settings.tableName }
  );

  return UserAccessRoles;
}

function makeAssociations(
  { User, Role, UserAccessRoles },
  settings,
  userAssociationWithOtherModel
) {
  User.belongsToMany(Role, {
    through: UserAccessRoles,
    as: settings.alias.asRole,
    foreignKey: "userId",
    otherKey: "roleId",
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });
  Role.belongsToMany(User, {
    through: UserAccessRoles,
    as: settings.alias.asUser,
    foreignKey: "roleId",
    otherKey: "userId",
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });
  UserAccessRoles.belongsTo(User, { foreignKey: "userId" });
  UserAccessRoles.belongsTo(Role, { foreignKey: "roleId" });

  userAssociationWithOtherModel(User, UserAccessRoles, { isCreate: true });
  userAssociationWithOtherModel(User, UserAccessRoles, { isCreate: false });
}

module.exports = { makeModel, makeAssociations };
