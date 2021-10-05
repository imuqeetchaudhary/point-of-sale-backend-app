function makeModel(sequelize, DataTypes, settings) {
  const Role = sequelize.define(
    settings.modelName,
    {
      roleId: {
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

  return Role;
}

function makeAssociations(
  { User, Role },
  settings,
  userAssociationWithOtherModel
) {
  userAssociationWithOtherModel(User, Role, { isCreate: true });
  userAssociationWithOtherModel(User, Role, { isCreate: false });
}

module.exports = { makeModel, makeAssociations };
