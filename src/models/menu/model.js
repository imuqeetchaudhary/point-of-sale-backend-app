function makeModel(sequelize, DataTypes, settings) {
  const Menu = sequelize.define(
    settings.modelName,
    {
      menuId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
      },
      description: {
        type: DataTypes.STRING(55),
        allowNull: false,
        unique: true,
      },
      link: {
        type: DataTypes.STRING(255),
        allowNull: false,
      },
      icon: DataTypes.STRING(500),
      parentId: DataTypes.INTEGER.UNSIGNED,
      createdBy: DataTypes.INTEGER.UNSIGNED,
      updatedBy: DataTypes.INTEGER.UNSIGNED,
    },
    { underscored: true, tableName: settings.tableName }
  );

  return Menu;
}

module.exports = makeModel;
