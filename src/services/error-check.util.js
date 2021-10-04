const { SQL_ERROR_CODE } = require("./error-code.utils");

function isRecordFound(err) {
  return role[0] === 0;
}

function isRecordDuplicate(err) {
  return err.original?.errno === SQL_ERROR_CODE.duplicateEntry;
}

function isFkFailed(err) {
  return err.original?.errno === SQL_ERROR_CODE.fkConstraintsFailed;
}

module.exports = { isRecordFound, isRecordDuplicate, isFkFailed };
