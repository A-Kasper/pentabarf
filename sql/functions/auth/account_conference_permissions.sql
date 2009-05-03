
-- returns list of permissions an account has in a certain conference

CREATE OR REPLACE FUNCTION auth.account_conference_permissions( account_id INTEGER, conference_id INTEGER ) RETURNS SETOF TEXT AS $$
  SELECT DISTINCT permission
  FROM auth.account_conference_role
    INNER JOIN auth.conference_role_permission USING( conference_role )
  WHERE
    account_conference_role.account_id = $1 AND 
    account_conference_role.conference_id = $2;
$$ LANGUAGE SQL;

