exports.init = (sequelize, DataTypes) => {
  const Country = sequelize.define(
    "Country",
    {
      countryId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
      },
      currencyId: {
        type: DataTypes.INTEGER.UNSIGNED,
        references: {
          model: "currency",
          key: "currency_id",
        },
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
      capital: {
        type: DataTypes.STRING(150),
        allowNull: false,
        unique: true,
      },
      dailCode: {
        type: DataTypes.STRING(6),
        allowNull: false,
        unique: true,
      },
      isDefault: {
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
    { underscored: true, tableName: "country" }
  );
  return Country;
};
