const menuAccessRoles = {
  modelName: "MenuAccessRoles",
  tableName: "ad_menu_access_roles",
  alias: {
    asRole: "role",
    asMenu: "menu",
  },
};

function userRelationWithModel(User, AssociatedModel, { isCreate }) {
  User.hasMany(AssociatedModel, {
    as: isCreate ? "createdBy" : "updatedBy",
    foreignKey: {
      name: isCreate ? "created_by" : "updated_by",
      allowNull: false,
    },
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });
}

module.exports = { menuAccessRoles, userRelationWithModel };
