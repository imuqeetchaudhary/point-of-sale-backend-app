const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveCountry = async ({
  currencyId,
  description,
  alias,
  capital,
  dailCode,
  actionperformedBy,
}) => {
  const country = {
    currencyId,
    description,
    alias,
    capital,
    dailCode,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newCountry = await db.Country.create({ ...country });
    return newCountry;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "Country already exists" });
    }
    throw err;
  }
};

exports.listAllCountries = async () => {
  return db.Country.findAll({
    ..._prop.hideFieldsCondition(),
  });
};

const _prop = {
  HIDDEN_FIELDS: ["createdAt", "updatedAt"],
  hideFieldsCondition: function (...args) {
    return { attributes: { exclude: [...this.HIDDEN_FIELDS, ...args] } };
  },
};
