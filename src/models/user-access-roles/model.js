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

module.exports = makeModel;
