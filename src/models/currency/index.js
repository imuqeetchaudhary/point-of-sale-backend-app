exports.init = (sequelize, DataTypes) => {
  const Currency = sequelize.define(
    "Currency",
    {
      currencyId: {
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
        type: DataTypes.STRING(6),
        allowNull: true,
      },
      symbol: {
        type: DataTypes.STRING(6),
        allowNull: true,
      },
      isDefault: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
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
    { underscored: true, tableName: "currency" }
  );
  return Currency;
};
