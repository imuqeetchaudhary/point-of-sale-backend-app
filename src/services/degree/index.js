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

exports.listAllDegree = async () => {
  return db.Degree.findAll({
    ..._prop.hideFieldsCondition(),
  });
};

exports.findById = ({ id }) => {
  return db.Degree.findByPk(id, _prop.hideFieldsCondition());
};

const _prop = {
  HIDDEN_FIELDS: ["createdAt", "updatedAt"],
  hideFieldsCondition: function (...args) {
    return { attributes: { exclude: [...this.HIDDEN_FIELDS, ...args] } };
  },
};
