function makeAssociations(
  { User, Brand },
  settings,
  userAssociationWithOtherModel
) {
  userAssociationWithOtherModel(User, Brand, { isCreate: true });
  userAssociationWithOtherModel(User, Brand, { isCreate: false });
}

module.exports = makeAssociations;
