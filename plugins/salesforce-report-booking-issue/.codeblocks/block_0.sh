curl --location 'https://<API_Server_domain>/services/data/v63.0/query/?q=SELECT+Id%2C+Name%2C+Status%2C+Owner.Email+FROM+Quote+WHERE+Owner.Email%3D<email>+AND+Name%3D<quote_name>' \
--header 'Authorization: Bearer <Your Access Token>'
