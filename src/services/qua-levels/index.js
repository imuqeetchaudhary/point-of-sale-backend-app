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

exports.listAllQUALevels = async () => {
  return db.QUALevels.findAll({ ..._prop.hideFieldsCondition() });
};

exports.findByPk = async ({ id }) => {
  return db.QUALevels.findByPk(id, _prop.hideFieldsCondition());
};

exports.updateQUALevels = async ({
  quaLevelsId,
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
    updatedBy: actionperformedBy,
  };

  try {
    const updateQUALevels = await db.QUALevels.update(
      { ...quaLevels },
      { where: { quaLevelsId } }
    );

    if (dbUtils.isRecordFound(updateQUALevels)) {
      throw new Exceptions.NotFound({ message: "QUA Levels Not Found" });
    }
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "QUA Levels Already Exists" });
    }
    throw err;
  }
};

exports.deleteQUALevels = async ({ quaLevelsId }) => {
  try {
    const deleteQUALevels = await db.QUALevels.destroy({
      where: { quaLevelsId },
    });
    if (dbUtils.isRecordFound(deleteQUALevels)) {
      throw new Exceptions.NotFound({ message: "QUA Levels not found" });
    }
  } catch (err) {
    if (dbUtils.isFkFailed(err)) {
      throw new Exceptions.BadRequest({
        message: "Can't delete QUA Levels unless delete all its reference",
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
