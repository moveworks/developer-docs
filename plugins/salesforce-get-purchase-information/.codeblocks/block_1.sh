curl --location 'https:<YOUR_INSTANCE>/services/data/v60.0/query?q=SELECT+Id,+Name,+CloseDate+FROM+Opportunity+WHERE+AccountId=<Account_id>+AND+StageName='Closed+Won'' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

