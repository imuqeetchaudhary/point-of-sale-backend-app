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

exports.findById = ({ id }) => {
  return db.Country.findByPk(id, _prop.hideFieldsCondition());
};

exports.updateCountry = async ({
  countryId,
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
    updatedBy: actionperformedBy,
  };

  try {
    const updateCountry = await db.Country.update(
      { ...country },
      { where: { countryId } }
    );

    if (dbUtils.isRecordFound(updateCountry)) {
      throw new Exceptions.NotFound({ message: "Country Not Found" });
    }
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: "Country Already Exists",
      });
    }
    throw err;
  }
};

exports.deleteCountry = async ({ countryId }) => {
  try {
    const deleteCountry = await db.Country.destroy({
      where: { countryId },
    });
  } catch (err) {
    if (dbUtils.isFkFailed(err)) {
      throw new Exceptions.BadRequest({
        message: "Can't delete country unless delete all its reference",
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
