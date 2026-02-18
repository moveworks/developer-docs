curl --location \
'https://<YOUR_SF_HOST>/rest/timemanagement/absence/v1/availableTimeTypes?$at={{AS_OF_DATE}}' \
--header'Authorization: Bearer <ACCESS_TOKEN>' \
--header'Accept: application/json'
