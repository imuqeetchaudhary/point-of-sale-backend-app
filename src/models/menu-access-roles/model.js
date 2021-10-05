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

module.exports = makeModel;
