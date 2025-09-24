curl --location 'https://<YOUR_INSTANCE>/profile/identity/vX/Users?filter=userName eq "{{email}}"' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
