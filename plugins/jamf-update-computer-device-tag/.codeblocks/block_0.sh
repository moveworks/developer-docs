curl --location 'https://{{YOUR_INSTANCE}}/api/v1/computers-inventory?section=GENERAL,HARDWARE,DISK_ENCRYPTION,USER_AND_LOCATION&filter={{filter_query}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
