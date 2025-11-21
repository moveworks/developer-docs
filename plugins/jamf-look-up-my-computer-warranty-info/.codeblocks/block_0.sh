curl --location 'https://<YOUR_INSTANCE>/api/v1/computers-inventory?section=GENERAL,USER_AND_LOCATION,HARDWARE,GENERAL&filter=userAndLocation.email=="{{email}}"' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

