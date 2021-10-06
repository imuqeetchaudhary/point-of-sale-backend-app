const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

async function listAllBrands() {
  return db.Brand.findAll({ attributes: ["brandId", "description"] });
}

async function singleBrand({ brandId }) {
  return db.Brand.findByPk(brandId, { attributes: ["brandId", "description"] });
}

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

async function updateBrand({ brandId, description, actionPerformBy }) {
  const brand = {
    description,
    updatedBy: actionPerformBy,
  };

  try {
    const updatedBrand = await db.Brand.update(
      { ...brand },
      { where: { brandId } }
    );

    if (dbUtils.isRecordFound(updatedBrand))
      throw new Exceptions.NotFound({ message: "Brand not found" });
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err))
      throw new Exceptions.BadRequest({ message: "Brand already exists" });
    throw err;
  }
}

module.exports = { listAllBrands, singleBrand, saveBrand, updateBrand };
