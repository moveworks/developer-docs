curl --location --request PATCH 'https://<YOUR_DOMAIN>/services/data/vXX.0/sobjects/Contact/<CONTACT_ID>' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <YOUR_AUTH_TOKEN>' \
--data '{
    "Email": "<Email>",
    "Phone": "<Phone>"
}'
