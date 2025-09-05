curl --location 'https://<your-instance>/services/data/v61.0/query/?q=SELECT+Id%2C+Name%2C+Email+FROM+User+WHERE+Email+LIKE+%27%25{{email}}%25%27+LIMIT+10' \
--header 'Authorization: Bearer <your-access-token>'
