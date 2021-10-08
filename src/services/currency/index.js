const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveCurrency = async ({
  description,
  alias,
  symbol,
  actionperformedBy,
}) => {
  const currency = {
    description,
    alias,
    symbol,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newCurrency = await db.Currency.create({ ...currency });
    return newCurrency;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "Currency already exists" });
    }
    throw err;
  }
};
