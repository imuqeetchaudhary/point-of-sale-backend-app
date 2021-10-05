function makeModel(sequelize, DataTypes, settings) {
  const UserAccessRoles = sequelize.define(
    settings.modelName,
    {
      // userId: {
      //   type: DataTypes.INTEGER.UNSIGNED,
      //   primaryKey: true,
      //   references: {
      //     model: User,
      //     key: "user_id",
      //   },
      //   onUpdate: "CASCADE",
      //   onDelete: "NO ACTION",
      // },
      userId: DataTypes.INTEGER.UNSIGNED,
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
      roleId: DataTypes.INTEGER.UNSIGNED,
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
      createdBy: DataTypes.INTEGER.UNSIGNED,
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
      updatedBy: DataTypes.INTEGER.UNSIGNED,
    },
    { underscored: true, tableName: settings.tableName }
  );

  return UserAccessRoles;
}

module.exports = { makeModel };
