const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveReligion = async ({ description, alias, actionperformedBy }) => {
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

exports.listAllReligion = async () => {
  return db.Religion.findAll({ ..._prop.hideFieldsCondition() });
};

exports.findByPk = async ({ id }) => {
  return db.Religion.findByPk(id, _prop.hideFieldsCondition());
};

exports.updateReligion = async ({
  religionId,
  description,
  alias,
  actionperformedBy,
}) => {
  const religion = {
    description,
    alias,
    updatedBy: actionperformedBy,
  };

  try {
    const updateReligion = await db.Religion.update(
      { ...religion },
      { where: { religionId } }
    );
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "Religion Already Exists" });
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
