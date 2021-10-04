const db = require("../../models");
const utils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

async function saveUserRoles({ userRoles }) {
  const _userRoles = userRoles.map((userRole) => {
    return { ...userRole, updatedBy: userRole.createdBy };
  });
  const transaction = await db.sequelize.transaction();

  try {
    const userRolesInDb = await db.UserAccessRoles.bulkCreate([..._userRoles]);

    await transaction.commit();

    return userRolesInDb;
  } catch (err) {
    await transaction.rollback();

    if (utils.isRecordDuplicate(err)) {
      throw new Exceptions.BadRequest({
        message: `You already pair the userId and roleId. It should not repeat`,
      });
    }

    throw err;
  }
}

module.exports = { saveUserRoles };
