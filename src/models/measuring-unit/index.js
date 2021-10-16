exports.init = (sequelize, DataTypes) => {
  const MeasuringUnit = sequelize.define(
    "MeasuringUnit",
    {
      measuringUnitId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
      },
      description: {
        type: DataTypes.STRING(255),
        unique: true,
      },
      alias: {
        type: DataTypes.STRING(255),
      },
      isDefault: {
        type: DataTypes.BOOLEAN,
      },
      iActive: {
        type: DataTypes.BOOLEAN,
      },
      createdBy: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
      },
      updatedBy: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
      },
    },
    { underscored: true, tableName: "ad_measuring_unit" }
  );
  return MeasuringUnit;
};
