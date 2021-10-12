const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveQUALevels = async ({
  description,
  alias,
  descDegree,
  level,
  actionperformedBy,
}) => {
  const quaLevels = {
    description,
    alias,
    descDegree,
    level,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newQUALevels = await db.QUALevels.create({ ...quaLevels });
    return newQUALevels;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "QUA Levels already exists" });
    }
    throw err;
  }
};
