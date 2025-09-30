curl --location 'https://<YOUR_INSTANCE>/odata/v2/User?$filter=email%20eq%20%27{{email}}%27&$select=userId,username' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Accept: application/json'
