curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+Name+FROM+Quote+WHERE+Name+LIKE+%27%25{{quote_name}}%25%27' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
