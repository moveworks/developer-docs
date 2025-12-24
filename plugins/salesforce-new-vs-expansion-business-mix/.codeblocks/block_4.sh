curl --location --request GET "https://<YOUR_INSTANCE_DOMAIN>/services/data/v64.0/query/?q=SELECT+Id,+Name+FROM+User+WHERE+UserRoleId='{{user_role_id}}'&order_by=Name+ASC&limit=100" \
--header "Authorization: Bearer YOUR_ACCESS_TOKEN" \
--header "Content-Type: application/json"
