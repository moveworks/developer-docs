curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%24top=30&%24filter=email%20eq%20%27<email>%27%20&%24select=defaultFullName%2Cemail%2CempId%2CfirstName%2CuserId%2C%20username%2CassignmentUUID%2Cmanager&%24expand=manager' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
