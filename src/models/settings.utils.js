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
    asRole: "mar_role",
    asMenu: "mar_menu",
  },
};

const userAccessRoles = {
  modelName: "UserAccessRoles",
  tableName: "ad_user_access_roles",
  alias: {
    asRole: "uar_role",
    asUser: "uar:user",
  },
};

const brand = {
  modelName: "Brand",
  tableName: "brand",
  alias: {},
};

const itemCategory = {
  modelName: "ItemCategory",
  tableName: "item_category",
  alias: {},
};

function userRelationWithModel(User, AssociatedModel, { isCreate }) {
  User.hasMany(AssociatedModel, {
    // as: isCreate ? "createdBy" : "updatedBy",
    foreignKey: {
      name: isCreate ? "createdBy" : "updatedBy",
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
  brand,
  itemCategory,
  userRelationWithModel,
};
