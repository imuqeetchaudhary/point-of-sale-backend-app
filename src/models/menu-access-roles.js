module.exports = (sequelize, DataTypes, { User, Role, Menu }) => {
  const MenuAccessRoles = sequelize.define(
    "MenuAccessRoles",
    {
      // menuId: {
      //   type: DataTypes.INTEGER.UNSIGNED,
      //   primaryKey: true,
      //   references: {
      //     model: Menu,
      //     key: "menu_id",
      //   },
      //   onUpdate: "CASCADE",
      //   onDelete: "NO ACTION",
      // },
      // roleId: {
      //   type: DataTypes.INTEGER.UNSIGNED,
      //   primaryKey: true,
      //   references: {
      //     model: Role,
      //     key: "role_id",
      //   },
      //   onUpdate: "CASCADE",
      //   onDelete: "NO ACTION",
      // },
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
      updatedBy: {
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
    { underscored: true, tableName: "ad_menu_access_roles" }
  );

  return MenuAccessRoles;
};
