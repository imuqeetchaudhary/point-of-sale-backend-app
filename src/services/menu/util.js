const Exceptions = require("../../utils/custom-exceptions");
const utils = require("../error-check.util");

function throwErrorWhenCreateOrUpdate(err) {
  if (utils.isFkFailed(err))
    throw new Exceptions.BadRequest({ message: "User is not found" });
  else if (utils.isRecordDuplicate(err))
    throw new Exceptions.BadRequest({
      message: "Alread record exists with provided description",
    });
}

module.exports = { throwErrorWhenCreateOrUpdate };
