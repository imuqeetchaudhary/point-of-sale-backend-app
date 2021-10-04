// const { Sequelize, DataTypes } = require("sequelize");
// const sequelize = new Sequelize();

module.exports = (sequelize, DataTypes, { User }) => {
  const Role = sequelize.define(
    "Role",
    {
      roleId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
      },
      description: {
        type: DataTypes.STRING(55),
        allowNull: false,
        unique: true,
      },
      createdBy: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        references: {
          model: User,
          key: "user_id",
        },
        onUpdate: "CASCADE",
        onDelete: "NO ACTION",
      },
      updateBy: {
        type: DataTypes.INTEGER.UNSIGNED,
        allowNull: false,
        references: {
          model: User,
          key: "user_id",
        },
        onUpdate: "CASCADE",
        onDelete: "NO ACTION",
      },
    },
    { underscored: true, tableName: "ad_role" }
  );

  return Role;
};

// const Role = sequelize.define(
//   "Role",
//   {
//     roleId: {
//       type: DataTypes.INTEGER.UNSIGNED,
//       primaryKey: true,
//       autoIncrement: true,
//     },
//     description: {
//       type: DataTypes.STRING(55),
//       allowNull: false,
//     },
//     createdBy: {
//       type: DataTypes.INTEGER.UNSIGNED,
//       primaryKey: true,
//       references: {
//         model: "User",
//         key: "userId",
//       },
//       onUpdate: "CASCADE",
//       onDelete: "NO ACTION",
//       field: "fk_ad_role_created_by"
//     },
//   },
//   { underscored: true, tableName: "ad_role",  },
// );

// Role.hasMany(null, { foreignKey: {} });
