curl --location 'https://<your-instance>/services/data/v59.0/query/?q=SELECT+Id%2C+CaseNumber%2C+Subject%2C+Description%2C+Owner.Email+FROM+Case+WHERE+CaseNumber%3D%27{{caseNumber}}%27' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
