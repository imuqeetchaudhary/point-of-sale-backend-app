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

exports.updateBloodGroup = async ({
  bloodgroupId,
  description,
  alias,
  actionperformedBy,
}) => {
  const bloodGroup = {
    description,
    alias,
    updatedBy: actionperformedBy,
  };

  try {
    const updateBloodGroup = await db.BloodGroup.update(
      { ...bloodGroup },
      { where: { bloodgroupId } }
    );

    if (dbUtils.isRecordFound(updateBloodGroup)) {
      throw new Exceptions.NotFound({ message: "Blood Group Not Found" });
    }
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: "Blood Group Already Exists",
      });
    }
    throw err;
  }
};

exports.deleteBloodGroup = async ({ bloodgroupId }) => {
  try {
    const deleteBloodGroup = await db.BloodGroup.destroy({
      where: { bloodgroupId },
    });
  } catch (err) {
    if (dbUtils.isFkFailed(err)) {
      throw new Exceptions.BadRequest({
        message: "Cann't delete blood group unless delete all its reference",
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
