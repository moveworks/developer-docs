curl --location --request PATCH 'https://<YOUR_DOMAIN>/services/data/v63.0/sobjects/Contact/<CONTACT_ID>' \
--header 'Content-Type: application/json' \
--data-raw '{
  "Phone": "<PHONE_NUMBER>",
  "Email": "<EMAIL_ADDRESS>"
}'
