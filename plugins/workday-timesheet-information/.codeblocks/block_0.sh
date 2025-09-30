curl --request POST \
curl --location 'https://<YOUR_DOMAIN>/api/wql/v1/<TENANT>/data?offset=0&limit=1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "query": "SELECT workdayID, fullName,businessTitle, email_PrimaryWorkOrPrimaryHome,employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = '{{email}}'"
}'
