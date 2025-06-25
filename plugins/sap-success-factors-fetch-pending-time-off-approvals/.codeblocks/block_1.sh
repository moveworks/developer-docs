curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%24filter=manager%2FuserId%20eq%20%27<Manager_userId>%27&%24select=userId%2CdisplayName' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \

