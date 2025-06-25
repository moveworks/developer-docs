curl --request PATCH \
--location 'https://<YOUR_DOMAIN>/services/data/v58.0/sobjects/Opportunity' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "AccountId": "<ACCOUNT_ID>",
    "Name": "<NAME>",
    "StageName": "<STAGE_NAME>",
    "CloseDate": "<CLOSE_DATE>",
    "Amount": "<AMOUNT>"
}'

