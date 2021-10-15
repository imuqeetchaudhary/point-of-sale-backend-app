exports.init = (sequelize, DataTypes) => {
  const PaymentTerm = sequelize.define(
    "PaymentTerm",
    {
      paymentTermId: {
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
      iDays: {
        type: DataTypes.INTEGER.UNSIGNED,
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
    { underscored: true, tableName: "ad_payment_term" }
  );
  return PaymentTerm;
};
