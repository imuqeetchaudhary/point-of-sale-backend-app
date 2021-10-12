exports.init = (sequelize, DataTypes) => {
  const QUALevels = sequelize.define(
    "QUALevels",
    {
      quaLevelsId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
      },
      description: {
        type: DataTypes.STRING(150),
        allowNull: true,
        unique: true,
      },
      alias: {
        type: DataTypes.STRING(20),
        allowNull: true,
      },
      descDegree: {
        type: DataTypes.STRING(500),
        allowNull: true,
        unique: true,
      },
      level: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: true,
        unique: true,
      },
      isDefault: {
        type: DataTypes.BOOLEAN,
        defaultValue: true,
      },
      isActive: {
        type: DataTypes.BOOLEAN,
        defaultValue: true,
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
    { underscored: true, tableName: "qua_levels" }
  );
  return QUALevels;
};
