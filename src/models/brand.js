function makeModel(sequelize, DataTypes, settings) {
  const Brand = sequelize.define(
    settings.modelName,
    {
      brandId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
      },
      description: {
        type: DataTypes.STRING(55),
        allowNull: false,
        unique: true,
      },
      createdBy: DataTypes.INTEGER.UNSIGNED,
      updatedBy: DataTypes.INTEGER.UNSIGNED,
    },
    { underscored: true, tableName: settings.tableName }
  );

  return Brand;
}

function makeAssociations(
  { User, Brand },
  settings,
  userAssociationWithOtherModel
) {
  userAssociationWithOtherModel(User, Brand, { isCreate: true });
  userAssociationWithOtherModel(User, Brand, { isCreate: false });
}

module.exports = { makeModel, makeAssociations };
