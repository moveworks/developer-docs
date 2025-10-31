curl --location 'https://<YOUR_INSTANCE>/api/v1/computers-inventory?section=HARDWARE,STORAGE,OPERATING_SYSTEM,USER_AND_LOCATION,SECURITY,GENERAL&filter={{filter_query}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
