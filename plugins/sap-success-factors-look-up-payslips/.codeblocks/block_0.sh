curl --request GET \
--location 'https://<API_SERVER>/odata/v2/User?$filter=email%20eq%20%27{{user_email}}%27&$select=userId' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
