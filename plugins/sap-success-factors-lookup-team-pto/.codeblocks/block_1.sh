curl --location 'https://<API_SERVER_DOMAIN>/odata/v2/User('{{userId}}')/directReports?%24select=defaultFullName%2Cemail%2CempId%2CfirstName%2CuserId%2Cusername' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
