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

exports.updateDegree = async ({
  degreeId,
  qualificationId,
  description,
  alias,
  actionperformedBy,
}) => {
  const degree = {
    qualificationId,
    description,
    alias,
    updatedBy: actionperformedBy,
  };

  try {
    const updateDegree = await db.Degree.update(
      { ...degree },
      { where: { degreeId } }
    );

    if (dbUtils.isRecordFound(updateDegree)) {
      throw new Exceptions.NotFound({ message: "Degree Not Found" });
    }
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: "Degree Already Exists",
      });
    }
    throw err;
  }
};

exports.deleteDegree = async ({ degreeId }) => {
  try {
    const deleteDegree = await db.Degree.destroy({
      where: { degreeId },
    });
  } catch (err) {
    if (dbUtils.isFkFailed(err)) {
      throw new Exceptions.BadRequest({
        message: "Can't delete degree unless delete all its reference",
      });
    }
    throw err;
  }
};

const _prop = {
  HIDDEN_FIELDS: ["createdAt", "updatedAt"],
  hideFieldsCondition: function (...args) {
    return { attributes: { exclude: [...this.HIDDEN_FIELDS, ...args] } };
  },
};
