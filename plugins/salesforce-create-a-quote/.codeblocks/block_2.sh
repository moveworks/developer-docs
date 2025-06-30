curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/sobjects/Quote' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "OpportunityId": "<OpportunityId>",
  "Name": "<name>",
  "Status": "<status>",
  "Pricebook2Id": "<Pricebook2Id>"
}'
