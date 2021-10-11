exports.init = (sequelize, DataTypes) => {
  const City = sequelize.define(
    "City",
    {
      cityId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
      },
      countryId: {
        type: DataTypes.INTEGER.UNSIGNED,
        references: {
          model: "country",
          key: "country_id",
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
      province: {
        type: DataTypes.STRING(150),
        allowNull: false,
        unique: true,
      },
      dailCode: {
        type: DataTypes.STRING(50),
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
    { underscored: true, tableName: "city" }
  );
  return City;
};
