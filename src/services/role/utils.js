const { SQL_ERROR_CODE } = require("../error-code.utils");
const Exceptions = require("../../utils/custom-exceptions");

function isRoleFound(role) {
  return role[0] === 0;
}

function isRoleDuplicate(err) {
  return err.original?.errno === SQL_ERROR_CODE.duplicateEntry;
}

function isUserExists(err) {
  return err.original?.errno === SQL_ERROR_CODE.fkConstraintsFailed;
}

function throwErrorWhenCreateOrUpdate(err) {
  if (isRoleDuplicate(err))
    throw new Exceptions.BadRequest({ message: "Role already exists" });
  else if (isUserExists(err))
    throw new Exceptions.BadRequest({ message: "User is not exists" });
}

module.exports = {
  isRoleFound,
  isRoleDuplicate,
  isUserExists,
  throwErrorWhenCreateOrUpdate,
};
