curl --request GET
--location 'https://<API_SERVER_DOMAIN>/odata/v2/User?%24top=30&%24filter=email%20eq%20%27<email>%27&%24select=hireDate' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
