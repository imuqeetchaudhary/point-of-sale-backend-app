const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveCity = async ({
  countryId,
  description,
  alias,
  province,
  dailCode,
  actionperformedBy,
}) => {
  const city = {
    countryId,
    description,
    alias,
    province,
    dailCode,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newCity = await db.City.create({ ...city });
    return newCity;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "City already exists" });
    }
    throw err;
  }
};

exports.listAllCities = async () => {
  return db.City.findAll({
    ..._prop.hideFieldsCondition(),
  });
};

exports.findById = ({ id }) => {
  return db.City.findByPk(id, _prop.hideFieldsCondition());
};

const _prop = {
  HIDDEN_FIELDS: ["createdAt", "updatedAt"],
  hideFieldsCondition: function (...args) {
    return { attributes: { exclude: [...this.HIDDEN_FIELDS, ...args] } };
  },
};
