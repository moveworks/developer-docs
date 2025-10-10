curl --location 'https://<your-instance>/services/data/v59.0/query/?q=SELECT+Id%2C+CaseNumber%2C+Subject%2C+Description%2C+Owner.Name+FROM+Case+WHERE+Subject+LIKE+%27%25{{subject}}%25%27+ORDER+BY+CreatedDate+DESC+LIMIT+500' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
