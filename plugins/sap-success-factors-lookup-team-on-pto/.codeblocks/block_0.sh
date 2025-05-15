curl --location 'https://<API_SERVER_DOMAIN>/odata/v2/User?%24filter=email%20eq%20%27<USER_EMAIL>%27&%24select=assignmentUUID,userId' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
