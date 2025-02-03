curl --location 'https://<YOUR_DOMAIN>.my.Salesforce.com/services/data/v63.0/sobjects/Task' \
--header 'Content-Type: application/json' \
--data '{
    "Subject": "Call Summary",
    "Description": "<CALL_SUMMARY>",
    "WhatId": "<OPPORTUNITY_ID>",
    "Status": "Completed"
}'
