const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveDegree = async ({
  qualificationId,
  description,
  alias,
  actionperformedBy,
}) => {
  const degree = {
    qualificationId,
    description,
    alias,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newDegree = await db.Degree.create({ ...degree });
    return newDegree;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "Degree already exists" });
    }
    throw err;
  }
};
