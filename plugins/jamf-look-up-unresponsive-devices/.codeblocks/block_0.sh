curl --location 'https://{{YOUR_INSTANCE}}/api/v1/computers-inventory?section=USER_AND_LOCATION,HARDWARE,GENERAL&filter={{filter_query}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
