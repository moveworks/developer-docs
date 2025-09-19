curl --location 'https://<your-instance>/services/data/v59.0/query/?q=SELECT+Id%2C+Title%2C+Name%2C+Email%[2C+Account.Name](http://2c+account.name/)%2C+Phone%2C+CreatedDate%2C+LastActivityDate+FROM+Contact+WHERE+Name+LIKE+%27%25{{contactName}}%25%27+ORDER+BY+LastModifiedDate+DESC+LIMIT+100' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
