const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveReligion = async ({
  description,
  alias,
  actionperformedBy,
}) => {
  const religion = {
    description,
    alias,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newReligion = await db.Religion.create({ ...religion });
    return newReligion;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "Religion already exists" });
    }
    throw err;
  }
};
