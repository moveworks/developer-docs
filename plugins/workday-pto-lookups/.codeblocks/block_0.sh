curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'\
--data-raw '{
    "query": "SELECT workdayID, fullName,businessTitle, email_PrimaryWorkOrPrimaryHome as email ,employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = '\''{{email_PrimaryWorkOrPrimaryHome}}'\''"
}'
