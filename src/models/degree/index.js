exports.init = (sequelize, DataTypes) => {
  const Degree = sequelize.define(
    "Degree",
    {
      degreeId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
      },
      qualificationId: {
        type: DataTypes.INTEGER.UNSIGNED,
        references: {
          model: "qualification",
          key: "qualification_id",
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
    { underscored: true, tableName: "degree" }
  );
  return Degree;
};
