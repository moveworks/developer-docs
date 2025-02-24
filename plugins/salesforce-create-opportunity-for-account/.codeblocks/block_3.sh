curl --location --request PATCH 'https://<YOUR_DOMAIN>.my.salesforce.com/services/data/v58.0/sobjects/Opportunity' \
--header 'Content-Type: application/json' \
--data '{
    "AccountId": "<ACCOUNT_ID>",
    "Name": "<NAME>",
    "StageName": "<STAGE_NAME>",
    "CloseDate": "<CLOSE_DATE>",
    "Amount": "<AMOUNT>"
}'
