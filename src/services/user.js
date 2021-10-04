const db = require("../models");

async function findByEmail({ email }) {
  return db.User.findOne({
    where: { email },
    attributes: { exclude: ["createdAt", "updatedAt"] },
  });
}

module.exports = { findByEmail };
