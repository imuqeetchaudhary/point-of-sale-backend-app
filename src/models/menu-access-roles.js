function makeModel(sequelize, DataTypes, { User, Role, Menu }) {
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
}

// module.exports = (sequelize, DataTypes, { User, Role, Menu }) => {};

function makeAssociations({ Role, Menu, MenuAccessRoles }) {
  Role.belongsToMany(Menu, {
    through: MenuAccessRoles,
    foreignKey: "role_id",
    otherKey: "menu_id",
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });
  Menu.belongsToMany(Role, {
    through: MenuAccessRoles,
    foreignKey: "menu_id",
    otherKey: "role_id",
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });
  MenuAccessRoles.belongsTo(Role, { foreignKey: "role_id" });
  MenuAccessRoles.belongsTo(Menu, { foreignKey: "menu_id" });
}

module.exports = { makeModel, makeAssociations };
