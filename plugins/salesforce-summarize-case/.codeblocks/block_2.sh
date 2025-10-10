curl --location 'https://<your-instance>/services/data/v59.0/query/?q=SELECT+Id%2C+CaseNumber%2C+Subject%2C+Owner.Email+FROM+Case+WHERE+Owner.Email%3D%27{{ownerEmail}}%27+ORDER+BY+CreatedDate+DESC+LIMIT+500' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
