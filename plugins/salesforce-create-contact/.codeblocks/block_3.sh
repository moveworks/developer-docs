curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/sobjects/Contact' \
--header 'Content-Type: application/json' \
--data-raw '{
"FirstName": "<FIRST_NAME>",
"LastName": "<LAST_NAME>",
"Email": "<EMAIL>",
"Phone":"<Phone>",
"AccountId": "<ACCOUNT_ID>"
}'
