curl --location 'https://<YOUR_INSTANCE>/odata/v2/FODepartment?%24select=externalCode%2Cname&%24top=100&%24skip=0' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
