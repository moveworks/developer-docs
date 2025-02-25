curl --location --request PATCH 'https://<YOUR_DOMAIN>.my.Salesforce.com/services/data/v63.0/sobjects/Opportunity/<OPPORTUNITY_ID>' \
--header 'Content-Type: application/json' \
--data '{
    "nextStep": "<NEXT_STEP>"
}'
