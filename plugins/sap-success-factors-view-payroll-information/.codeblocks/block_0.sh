curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%24select=firstName%2ClastName%2CdisplayName%2CempId%2CjobTitle%2CjobLevel%2Cdepartment%2Csalary%2CcompensationSalaryRateType%2Cstatus&%24filter=displayName%20eq%20<displayName>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
