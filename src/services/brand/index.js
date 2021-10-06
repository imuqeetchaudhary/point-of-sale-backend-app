const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

async function saveBrand({ description, actionPerformBy }) {
  const brand = {
    description,
    createdBy: actionPerformBy,
    updatedBy: actionPerformBy,
  };

  try {
    const newBrand = await db.Brand.create({ ...brand });
    return newBrand;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err))
      throw new Exceptions.BadRequest({ message: "Brand already exists" });
    throw err;
  }
}

module.exports = { saveBrand };
