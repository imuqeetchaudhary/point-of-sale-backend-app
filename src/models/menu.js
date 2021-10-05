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
    },
    { underscored: true, tableName: settings.tableName }
  );

  return Menu;
}

function makeAssociations(
  { User, Menu },
  settings,
  userAssociationWithOtherModel
) {
  Menu.hasMany(Menu, {
    foreignKey: { name: "parent_id", allowNull: true },
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });

  userAssociationWithOtherModel(User, Menu, { isCreate: true });
  userAssociationWithOtherModel(User, Menu, { isCreate: false });
}

module.exports = { makeModel, makeAssociations };

// const { Sequelize, DataTypes } = require("sequelize");
// const sequelize = new Sequelize();
// const UserAccessRoles = sequelize.define(
//   "UserAccessRoles",
//   {},
//   { underscored: true, tableName: "ad_user_access_roles" }
// );
