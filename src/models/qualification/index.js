exports.init = (sequelize, DataTypes) => {
  const Qualification = sequelize.define(
    "Qualification",
    {
      qualificationId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
      },
      quaLevelsId: {
        type: DataTypes.INTEGER.UNSIGNED,
        references: {
          model: "qua_levels",
          key: "qua_levels_id",
        },
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
    { underscored: true, tableName: "qualification" }
  );
  return Qualification;
};
