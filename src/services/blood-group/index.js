const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveBloodGroup = async ({ description, alias, actionperformedBy }) => {
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
      throw new Exceptions.BadRequest({
        message: "Blood Group already exists",
      });
    throw err;
  }
};

exports.listAllBloodGroups = async () => {
  return db.BloodGroup.findAll({
    ..._prop.hideFieldsCondition(),
  });
};

exports.findById = ({ id }) => {
  return db.BloodGroup.findByPk(id, _prop.hideFieldsCondition());
};

const _prop = {
  HIDDEN_FIELDS: ["createdAt", "updatedAt"],
  hideFieldsCondition: function (...args) {
    return { attributes: { exclude: [...this.HIDDEN_FIELDS, ...args] } };
  },
};
