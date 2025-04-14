curl --request GET
--location 'https://<API_SERVER>/odata/v2/User('\''<Manager_userId>'\'')/directReports?%24select=defaultFullName%2Cemail%2CempId%2CfirstName%2CuserId%2Cusername' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \

