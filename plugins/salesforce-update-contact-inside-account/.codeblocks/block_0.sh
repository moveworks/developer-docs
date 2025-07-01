curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+ID+FROM+CONTACT+WHERE+NAME+LIKE+%27%25<CONTACT_NAME>%25%27' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <YOUR_AUTH_TOKEN>'
