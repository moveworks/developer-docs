curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/sobjects/Task' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "Subject": "Call Summary",
    "Description": "<call_summary>",
    "WhatId": "<opportunity_id>",
    "Status": "Completed"
}'
