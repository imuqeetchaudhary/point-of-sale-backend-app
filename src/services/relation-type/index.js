const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveRelationType = async ({
  description,
  alias,
  actionperformedBy,
}) => {
  const relationType = {
    description,
    alias,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newRelationType = await db.RelationType.create({ ...relationType });
    return newRelationType;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err))
      throw new Exceptions.BadRequest({
        message: "Relation Type already exists",
      });
    throw err;
  }
};

exports.listAllRelationType = async () => {
  return db.RelationType.findAll({
    ..._prop.hideFieldsCondition(),
  });
};

exports.findById = ({ id }) => {
  return db.RelationType.findByPk(id, _prop.hideFieldsCondition());
};

exports.updateRelationType = async ({
  relationTypeId,
  description,
  alias,
  actionperformedBy,
}) => {
  const relationType = {
    description,
    alias,
    updatedBy: actionperformedBy,
  };

  try {
    const updateRelationType = await db.RelationType.update(
      { ...relationType },
      { where: { relationTypeId } }
    );

    if (dbUtils.isRecordFound(updateRelationType)) {
      throw new Exceptions.NotFound({ message: "Relation type Not Found" });
    }
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: "Relation type Already Exists",
      });
    }
    throw err;
  }
};

exports.deleteRelationType = async ({ relationTypeId }) => {
  try {
    const deleteRelationType = await db.RelationType.destroy({
      where: { relationTypeId },
    });
  } catch (err) {
    if (dbUtils.isFkFailed(err)) {
      throw new Exceptions.BadRequest({
        message: "Can't delete relation type unless delete all its reference",
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
