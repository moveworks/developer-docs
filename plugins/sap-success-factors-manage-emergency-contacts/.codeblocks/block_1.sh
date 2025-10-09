curl --location 'https://<YOUR_INSTANCE>/odata/v2/PerEmergencyContacts?$filter=personIdExternal%20eq%20%27{{personIdExternal}}%27' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Accept: application/json'
