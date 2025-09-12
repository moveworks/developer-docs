curl --location 'https://<YOUR_INSTANCE>/services/data/v56.0/query/?q=SELECT+Id%2CName%2CTitle%2CAccount.Name%2CEmail%2CPhone%2CCreatedDate%2CLastActivityDate+FROM+Contact+WHERE+Owner.Email%3D%27{{email}}%27+ORDER+BY+LastModifiedDate+DESC+LIMIT+100' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Content-Type: application/json'
