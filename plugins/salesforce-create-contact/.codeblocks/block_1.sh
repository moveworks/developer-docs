curl --location 'https://<YOUR_DOMAIN>.my.salesforce.com/services/data/vXX.0/sobjects/Contact' \
--header 'Content-Type: application/json' \
--header 'Authorization: <YOUR_AUTH_TOKEN>' \
--data '{
"FirstName": "<FIRST_NAME>",
"LastName": "<LAST_NAME>",
"Email": "<EMAIL>",
"Phone": "<Phone>",
"AccountId": "<ACCOUNT_ID>"
}'
