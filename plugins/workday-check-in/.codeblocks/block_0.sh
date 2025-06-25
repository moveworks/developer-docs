curl --request POST \
curl --location 'https://<DOMAIN>.myworkday.com/api/wql/v1/<TENANT>/data?offset=0&limit=1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
		"query": "SELECT workdayID, fullName, email_PrimaryWorkOrPrimaryHome, timeZoneOfLocationOfWorkersPrimaryPosition, check_InStatus FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = '\''{{email}}'\''"
}'
Copy
