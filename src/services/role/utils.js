const { SQL_ERROR_CODE } = require("../error-code.utils");

function isRoleExists(err) {
  return err.original?.errno === SQL_ERROR_CODE.duplicateEntry;
}

function isUserExists(err) {
  return err.original?.errno === SQL_ERROR_CODE.fkConstraintsFailed;
}

module.exports = { isRoleExists, isUserExists };
