curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%2424top=30&%24filter=email%20eq%20<email>&%24select=userId%2CfirstName%2ClastName%2CdisplayName%2Cnickname%2Cemail%2Clocation%2Cdepartment%2Cstatus%2Cgender%2CtimeZone%2CemployeeClass%2ChireDate%2CjobCode' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
