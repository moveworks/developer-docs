curl --location 'https://<your-instance>/services/data/v59.0/query/?q=SELECT+Id%2C+Title%2C+Name%[2C+Account.Name](http://2c+account.name/)%2C+Phone%2C+Email%2C+CreatedDate%2C+LastActivityDate+FROM+Contact+WHERE+Owner.Email%3D%27{{ownerEmail}}%27+ORDER+BY+LastModifiedDate+DESC+LIMIT+100' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
