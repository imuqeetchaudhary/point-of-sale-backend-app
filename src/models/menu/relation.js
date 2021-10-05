function makeAssociations(
  { User, Menu },
  settings,
  userAssociationWithOtherModel
) {
  Menu.hasMany(Menu, {
    foreignKey: { name: "parentId", allowNull: true },
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });

  userAssociationWithOtherModel(User, Menu, { isCreate: true });
  userAssociationWithOtherModel(User, Menu, { isCreate: false });
}

module.exports = makeAssociations;
