const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveQualification = async ({
  quaLevelsId,
  description,
  alias,
  actionperformedBy,
}) => {
  const qualification = {
    quaLevelsId,
    description,
    alias,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newQualification = await db.Qualification.create({
      ...qualification,
    });
    return newQualification;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: "Qualification already exists",
      });
    }
    throw err;
  }
};
