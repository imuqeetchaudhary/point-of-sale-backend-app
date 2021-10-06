function makeAssociations(
  { User, ItemCategory },
  settings,
  userAssociationWithOtherModel
) {
  ItemCategory.hasMany(ItemCategory, {
    foreignKey: { name: "parentId", allowNull: true },
    onUpdate: "CASCADE",
    onDelete: "NO ACTION",
  });

  userAssociationWithOtherModel(User, ItemCategory, { isCreate: true });
  userAssociationWithOtherModel(User, ItemCategory, { isCreate: false });
}

module.exports = makeAssociations;
