curl --location 'https://<YOUR_INSTANCE>/odata/v2/User?%24filter=email%20eq%20%27{{USER_EMAIL}}%27&%24select=userId%2Cusername' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
