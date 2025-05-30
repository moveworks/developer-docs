curl --location --globoff 'https://<YOUR_INSTANCE>/odata/v2/User?%24filter=email%20eq%20%27{{email}}%27&%24select=userId%2CfirstName%2ClastName%2CdisplayName%2Cnickname%2Cemail%2Clocation%2Cdepartment%2Cstatus%2Cgender%2CtimeZone%2CemployeeClass%2ChireDate%2CimpactOfLoss%2CriskOfLoss%2CjobCode%2CbusinessPhone%2Csalary%2CcompensationSalaryRateType%2CempId' \
--header 'Accept: application/json' \
--header 'Authorization:  Bearer '\
