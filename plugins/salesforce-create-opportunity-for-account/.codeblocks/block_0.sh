curl --request GET \
--location 'https://<YOUR_DOMAIN>/services/data/v58.0/query?q=SELECT+Id+FROM+Account+WHERE+Name+LIKE+%27%25<ACCOUNT_NAME>%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
--header 'Accept: application/json' \
