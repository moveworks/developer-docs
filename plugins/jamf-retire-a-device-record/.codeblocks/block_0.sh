curl --location 'https://<YOUR_INSTANCE>/api/v1/computers-inventory?filter={{filter_query}}&section=USER_AND_LOCATION,HARDWARE,GENERAL' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN> ' \
