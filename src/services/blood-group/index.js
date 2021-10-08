const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveBloodGroup = async({ description, alias, actionperformedBy }) => {
  const bloodgroup = {
    description,
    alias,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newBloodGroup = await db.BloodGroup.create({ ...bloodgroup });
    return newBloodGroup;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err))
      throw new Exceptions.BadRequest({ message: "Blood Group already exists" });
    throw err;
  }
};
