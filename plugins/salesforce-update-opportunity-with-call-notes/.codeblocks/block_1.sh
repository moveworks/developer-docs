curl --location --request PATCH 'https://<YOUR_DOMAIN>/services/data/vXX.0/sobjects/Opportunity/<opportunity_id>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "nextStep": "<next_step>"
}'
