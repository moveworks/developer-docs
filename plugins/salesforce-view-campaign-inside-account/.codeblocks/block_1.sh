curl --location 'https://<YOUR_INSTANCE>/services/data/v56.0/query/?q=SELECT+Id%2CName%2CStatus%2CStartDate%2CEndDate+FROM+Campaign+WHERE+Account__r.Name+%3D+<Account_Name>ORDER+BY+StartDate+DESC+LIMIT+1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
