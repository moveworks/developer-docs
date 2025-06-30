curl --location 'https://<YOUR_INSTANCE>/services/data/v56.0/sobjects/Campaign/' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "Name":"{{name}}",
    "Description":"{{description}}",
		"Account__c":"{{Account_c}}",
    "StartDate":"{{startdate}}",
    "EndDate":"{{enddate}}"
  }'

