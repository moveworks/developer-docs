curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "query": "SELECT employeeID, fullName FROM allActiveEmployees WHERE fullName = \"{{full_name}}\""
}'
