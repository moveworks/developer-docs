curl --location 'https://<YOUR_DOMAIN>/ccx/api/wql/v1/<INSTANCE_ID>/query/?q=SELECT workdayID, fullName, email_PrimaryWorkOrPrimaryHome, timeZoneOfLocationOfWorkersPrimaryPosition, check_InStatus FROM allWorkers WHERE fullName = {{fullName}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

