function makeModel(sequelize, DataTypes, { User }) {
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
    { underscored: true, tableName: "ad_role" }
  );

  return Role;
}

module.exports = { makeModel };
