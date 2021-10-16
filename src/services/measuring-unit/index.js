const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveMeasuringUnit = async ({
  description,
  alias,
  actionperformedBy,
}) => {
  const measuringUnit = {
    description,
    alias,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newMeasuringUnit = await db.MeasuringUnit.create({
      ...measuringUnit,
    });
    return newMeasuringUnit;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err))
      throw new Exceptions.BadRequest({
        message: "Measuring Term already exists",
      });
    throw err;
  }
};

exports.listAllMeasuringUnits = async () => {
  return db.MeasuringUnit.findAll({
    ..._prop.hideFieldsCondition(),
  });
};

exports.findById = ({ id }) => {
  return db.MeasuringUnit.findByPk(id, _prop.hideFieldsCondition());
};

exports.updateMeasuringUnit = async ({
  measuringUnitId,
  description,
  alias,
  actionperformedBy,
}) => {
  const measuringUnit = {
    description,
    alias,
    updatedBy: actionperformedBy,
  };

  try {
    const updateMeasuringUnit = await db.MeasuringUnit.update(
      { ...measuringUnit },
      { where: { measuringUnitId } }
    );

    if (dbUtils.isRecordFound(updateMeasuringUnit)) {
      throw new Exceptions.NotFound({ message: "Measuring Term Not Found" });
    }
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: "Measuring Term Already Exists",
      });
    }
    throw err;
  }
};

exports.deleteMeasuringUnit = async ({ measuringUnitId }) => {
  try {
    const deleteMeasuringUnit = await db.MeasuringUnit.destroy({
      where: { measuringUnitId },
    });
  } catch (err) {
    if (dbUtils.isFkFailed(err)) {
      throw new Exceptions.BadRequest({
        message: "Can't delete measuring term unless delete all its reference",
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
