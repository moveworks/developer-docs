curl --request POST
--location 'https://<DOMAIN>.myworkday.com/api/wql/v1/<INSTANCE>/data?offset=0&limit=1' \
--header 'Content-Type: application/json' \
--data '{ 
    "query": "SELECT workdayID, fullName, email_PrimaryWorkOrPrimaryHome, timeZoneOfLocationOfWorkersPrimaryPosition 
              FROM allWorkers 
              WHERE fullName LIKE '\''%{{fullName}}%'\''"  
}'

