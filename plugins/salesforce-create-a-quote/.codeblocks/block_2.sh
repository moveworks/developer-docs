curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/sobjects/Quote' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <YOUR_AUTH_TOKEN>' \
--data '{
  "OpportunityId": "<OPPORTUNITY_ID>",
  "Name": "<QUOTE_NAME>",
  "Status": "<QUOTE_STATUS>",
  "Pricebook2Id": "<PRICEBOOK2_ID>"
}'
