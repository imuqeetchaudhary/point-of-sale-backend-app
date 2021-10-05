const user = {
  modelName: "User",
  tableName: "user",
  alias: {},
};

const role = {
  modelName: "Role",
  tableName: "ad_role",
  alias: {},
};

const menu = {
  modelName: "Menu",
  tableName: "ad_menu",
  alias: {},
};

const menuAccessRoles = {
  modelName: "MenuAccessRoles",
  tableName: "ad_menu_access_roles",
  alias: {
    asRole: "role",
    asMenu: "menu",
  },
};

const userAccessRoles = {
  modelName: "UserAccessRoles",
  tableName: "ad_user_access_roles",
  alias: {},
};

function userRelationWithModel(User, AssociatedModel, { isCreate }) {
  User.hasMany(AssociatedModel, {
    // as: isCreate ? "createdBy" : "updatedBy",
    foreignKey: {
      name: isCreate ? "created_by" : "updated_by",
      allowNull: false,
    },
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });
}

module.exports = {
  user,
  role,
  menu,
  menuAccessRoles,
  userAccessRoles,
  userRelationWithModel,
};
