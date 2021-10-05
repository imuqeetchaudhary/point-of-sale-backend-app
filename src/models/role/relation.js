function makeAssociations(
  { User, Role },
  settings,
  userAssociationWithOtherModel
) {
  userAssociationWithOtherModel(User, Role, { isCreate: true });
  userAssociationWithOtherModel(User, Role, { isCreate: false });
}

module.exports = makeAssociations;
