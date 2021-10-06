function makeModel(sequelize, DataTypes, settings) {
  const ItemCategory = sequelize.define(
    settings.modelName,
    {
      categoryId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
      },
      description: {
        type: DataTypes.STRING(55),
        allowNull: false,
      },
      categoryCode: {
        type: DataTypes.STRING(255),
        allowNull: false,
        unique: true,
      },
      customCode: DataTypes.STRING(255),
      parentId: DataTypes.INTEGER.UNSIGNED,
      createdBy: DataTypes.INTEGER.UNSIGNED,
      updatedBy: DataTypes.INTEGER.UNSIGNED,
    },
    { underscored: true, tableName: settings.tableName }
  );

  return ItemCategory;
}

module.exports = makeModel;
