curl --location 'https://<YOUR_INSTANCE>/services/data/v56.0/query/?q=SELECT+Id%2CName%2CTitle%2CAccount.Name%2CPhone%2CEmail%2CCreatedDate%2CLastActivityDate+FROM+Contact+WHERE+Name+LIKE+%27%25{{name}}%25%27+ORDER+BY+LastModifiedDate+DESC+LIMIT+100' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Content-Type: application/json'
