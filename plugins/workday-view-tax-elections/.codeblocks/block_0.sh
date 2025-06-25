curl --request GET
--location 'https://<DOMAIN>/api/wql/v1/<TENANT>/data?query=SELECT%20stateWithholdingWork_AdditionalAmount%2C%20stateWithholdingResident_MaritalStatus%2C%20stateWithholdingResident_NumberOfAllowances%2C%20federalWithholdingW_4_AdditionalAmount%2C%20federalWithholdingW_4_MaritalStatus%2C%20federalWithholdingW_4_NumberOfAllowances%20FROM%20workerFromEmailAddress%20(emailAddress%20%3D%20%27{{email}}%27)' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
