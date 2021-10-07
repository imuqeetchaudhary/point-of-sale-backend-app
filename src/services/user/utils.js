const DEFAULT_ROLE = 1;

function queryForGettingAllUserRoles(userId) {
  return `
        SELECT 
            r.role_id AS roleId,
            r.description
        FROM ad_user_access_roles uar
        JOIN ad_role r USING (role_id)
        WHERE user_id = ${userId}
    `;
}

module.exports = { DEFAULT_ROLE, queryForGettingAllUserRoles };
