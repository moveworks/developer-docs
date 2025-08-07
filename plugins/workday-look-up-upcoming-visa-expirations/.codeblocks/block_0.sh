curl --location 'https://<your-instance>/ccx/api/wql/v1/{{TENANT}}/data' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>' \
--data-raw '{
"query": "SELECT worker, jobFamilyGroup, email_PrimaryWorkOrPrimaryHome, workdayID FROM allActiveEmployees WHERE jobFamilyGroup = \"jobFamilyGroup-ID}}\" AND email_PrimaryWorkOrPrimaryHome = \"{{email}}\""
}'
