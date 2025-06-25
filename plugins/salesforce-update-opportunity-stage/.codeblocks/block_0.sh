curl --request PATCH
--location 'https://<YOUR_DOMAIN>/services/data/v63.0/sobjects/Opportunity/<OPPORTUNITY_ID>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "StageName": "{{STAGE_NAME}}",
    "Name": "{{NAME}}",
    "CloseDate": "{{CLOSE_DATE}}",
    "Discount__c": "{{DISCOUNT}}",
    "MRR__c": "{{MRR}}"
}'
