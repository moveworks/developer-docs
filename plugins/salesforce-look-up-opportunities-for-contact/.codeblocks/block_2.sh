curl --location 'https://<your-instance>/services/data/v59.0/query/?q=SELECT+Id%2C+FirstName%2C+LastName%2C+Email%2C+Account.Name+FROM+Contact+WHERE+Account.Name+LIKE+%27%25{{accountName}}%25%27+ORDER+BY+Account.Name+DESC+LIMIT+100' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
