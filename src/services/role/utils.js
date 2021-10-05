const utils = require("../error-check.util");
const Exceptions = require("../../utils/custom-exceptions");

function queryForGetAndCheckRoleExistsForUser(userId) {
  return `
    SELECT 
      r.role_id AS roleId,
      r.description,
      (
      SELECT COUNT(role_id)
          FROM ad_user_access_roles ur
          WHERE ur.role_id = r.role_id and ur.user_id = ${userId}
      ) AS isFound
    FROM ad_role r
    ORDER BY r.role_id
  `;
}

function throwErrorWhenCreateOrUpdate(err) {
  if (utils.isRecordDuplicate(err))
    throw new Exceptions.BadRequest({ message: "Role already exists" });
  else if (utils.isFkFailed(err))
    throw new Exceptions.BadRequest({ message: "User is not exists" });
}

module.exports = {
  queryForGetAndCheckRoleExistsForUser,
  throwErrorWhenCreateOrUpdate,
};
