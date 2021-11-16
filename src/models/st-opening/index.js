exports.init = (sequelize, DataTypes) => {
  const StOpening = sequelize.define(
    "StOpening",
    {
      stOpeningId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
      },
      productId: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
      },
      quantity: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: true,
      },
      price: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: true,
      },
      date: {
        type: DataTypes.DATE,
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
    { underscored: true, tableName: "st_opening" }
  );
  return StOpening;
};
