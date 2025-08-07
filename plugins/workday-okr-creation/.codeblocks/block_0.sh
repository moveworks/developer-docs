curl --request POST\
--location 'https://<DOMAIN>.myworkday.com/ccx/api/wql/v1/{{TENANT}}/data' \
--header 'Authorization: Bearer <ACCESS TOKEN>' \
--header 'Content-Type: application/json' \
--data-raw '{
    "query": "SELECT workdayID, fullName,businessTitle, email_PrimaryWorkOrPrimaryHome as email ,employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = '\''{{email}}'\''"
}'
