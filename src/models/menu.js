function makeModel(sequelize, DataTypes, settings) {
  const Menu = sequelize.define(
    settings.modelName,
    {
      menuId: {
        type: DataTypes.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
      },
      description: {
        type: DataTypes.STRING(55),
        allowNull: false,
        unique: true,
      },
      link: {
        type: DataTypes.STRING(255),
        allowNull: false,
      },
      icon: DataTypes.STRING(500),
      parentId: DataTypes.INTEGER.UNSIGNED,
      createdBy: DataTypes.INTEGER.UNSIGNED,
      updatedBy: DataTypes.INTEGER.UNSIGNED,

      // createdBy: {
      //   type: DataTypes.INTEGER.UNSIGNED,
      //   allowNull: false,
      //   references: {
      //     model: User,
      //     key: "user_id",
      //   },
      //   onUpdate: "CASCADE",
      //   onDelete: "NO ACTION",
      // },
      // updatedBy: {
      //   type: DataTypes.INTEGER.UNSIGNED,
      //   allowNull: false,
      //   references: {
      //     model: User,
      //     key: "user_id",
      //   },
      //   onUpdate: "CASCADE",
      //   onDelete: "NO ACTION",
      // },
    },
    { underscored: true, tableName: settings.tableName }
  );

  return Menu;
}

module.exports = { makeModel };

// const { Sequelize, DataTypes } = require("sequelize");
// const sequelize = new Sequelize();
// const UserAccessRoles = sequelize.define(
//   "UserAccessRoles",
//   {},
//   { underscored: true, tableName: "ad_user_access_roles" }
// );
