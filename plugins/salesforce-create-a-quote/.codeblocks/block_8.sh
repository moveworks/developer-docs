curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/query/?q=SELECT+Id,+Name+FROM+Quote+WHERE+Name+LIKE+%27%25{{Quote_Name}}%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

