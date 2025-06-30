curl --location --request PATCH 'https://<API_SERVER_DOMAIN>/services/data/v62.0/sobjects/Quote/<QUOTE_ID>' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <YOUR_ACESS_TOKEN>' \
--data '{
    "Status": "{{Status}}"
}'
