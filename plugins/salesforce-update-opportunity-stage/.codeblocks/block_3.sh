curl --location --request PATCH 'https://<YOUR_DOMAIN>.my.salesforce.com/services/data/v63.0/sobjects/Opportunity/<OPPORTUNITY_ID>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "StageName": "<STAGE_NAME>"
}
'
