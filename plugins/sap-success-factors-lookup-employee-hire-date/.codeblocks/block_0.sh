curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%24top=30&%24filter=displayName%20eq%20%27<displayName>%27&%24select=hireDate' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
