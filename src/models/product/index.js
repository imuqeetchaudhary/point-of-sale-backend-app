exports.init = (sequelize, DataTypes) => {
  const Product = sequelize.define(
    "Product",
    {
      productId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
      },
      description: {
        type: DataTypes.STRING(255),
        allowNull: true,
        unique: true,
      },
      alias: {
        type: DataTypes.STRING(6),
        allowNull: true,
      },
      categoryId: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
      },
      unitInId: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
      },
      unitOutId: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
      },
      barcode: {
        type: DataTypes.STRING(255),
      },
      isDefault: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
        defaultValue: true,
      },
      isActive: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
        defaultValue: true,
      },
      picture: {
        type: DataTypes.STRING(255),
      },
      itHeadUrdu: {
        type: DataTypes.STRING(255),
      },
      itMinLevel: {
        type: DataTypes.FLOAT,
        defaultValue: 0,
      },
      itMaxLevel: {
        type: DataTypes.FLOAT,
        defaultValue: 0,
      },
      itRoLevel: {
        type: DataTypes.FLOAT,
        defaultValue: 0,
      },
      itRoQty: {
        type: DataTypes.FLOAT,
        defaultValue: 0,
      },
      itRate: {
        type: DataTypes.FLOAT,
        defaultValue: 0,
      },
      isSerialized: {
        type: DataTypes.BOOLEAN,
        defaultValue: false,
      },
      sTaxRate: {
        type: DataTypes.FLOAT,
        defaultValue: 0,
      },
      inUnit: {
        type: DataTypes.FLOAT,
        defaultValue: 0,
      },
      outUnit: {
        type: DataTypes.FLOAT,
        defaultValue: 0,
      },
      pType: {
        type: DataTypes.STRING(255),
        defaultValue: "own",
      },
      pType1: {
        type: DataTypes.STRING(255),
        defaultValue: "parts",
      },
      bargen: {
        type: DataTypes.BOOLEAN,
        defaultValue: false,
      },
      brandId: {
        type: DataTypes.INTEGER.UNSIGNED,
      },
      isStocked: {
        type: DataTypes.BOOLEAN,
        defaultValue: true,
      },
      isFinished: {
        type: DataTypes.BOOLEAN,
        defaultValue: false,
      },
      productTypeId: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
      },
      intCode: {
        type: DataTypes.STRING(255),
      },
      openBal: {
        type: DataTypes.FLOAT,
        defaultValue: 0,
      },
      hsCode: {
        type: DataTypes.STRING(255),
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
    { underscored: true, tableName: "ad_product" }
  );
  return Product;
};
