exports.init = (sequelize, DataTypes) => {
  const Vendor = sequelize.define(
    "Vendor",
    {
      vendorId: {
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
      address: {
        type: DataTypes.STRING(255),
      },
      countryId: {
        type: DataTypes.INTEGER.UNSIGNED,
      },
      cityId: {
        type: DataTypes.INTEGER.UNSIGNED,
      },
      sRegStNo: {
        type: DataTypes.STRING(255),
      },
      sItNo: {
        type: DataTypes.STRING(255),
      },
      phone: {
        type: DataTypes.STRING(255),
      },
      fax: {
        type: DataTypes.STRING(255),
      },
      cell: {
        type: DataTypes.STRING(255),
      },
      email: {
        type: DataTypes.STRING(255),
      },
      isWht: {
        type: DataTypes.BOOLEAN,
      },
      whtTax: {
        type: DataTypes.FLOAT,
      },
      iWhtTax: {
        type: DataTypes.FLOAT,
      },
      isCreditLimit: {
        type: DataTypes.BOOLEAN,
      },
      creditAmount: {
        type: DataTypes.FLOAT,
      },
      contactPerson: {
        type: DataTypes.STRING(255),
      },
      iAccountId: {
        type: DataTypes.INTEGER.UNSIGNED,
      },
      isDefault: {
        type: DataTypes.BOOLEAN,
      },
      isActive: {
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
    { underscored: true, tableName: "ad_vendor" }
  );
  return Vendor;
};
