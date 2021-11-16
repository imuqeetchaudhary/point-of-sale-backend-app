const db = require("../../models");
const dbUtils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

exports.saveStOpening = async ({
  productId,
  quantity,
  price,
  date,
  actionperformedBy,
}) => {
  const stOpening = {
    productId,
    quantity,
    price,
    date,
    createdBy: actionperformedBy,
    updatedBy: actionperformedBy,
  };

  try {
    const newStOpening = await db.StOpening.create({ ...stOpening });
    return newStOpening;
  } catch (err) {
    if (dbUtils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({ message: "St Opening already exists" });
    }
    throw err;
  }
};