const utils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

function throwErrorWhenCreateOrUpdate(err) {
  if (utils.isRecordDuplicate(err))
    throw new Exceptions.BadRequest({ message: "Role already exists" });
  else if (utils.isFkFailed(err))
    throw new Exceptions.BadRequest({ message: "User is not exists" });
}

module.exports = {
  throwErrorWhenCreateOrUpdate,
};
