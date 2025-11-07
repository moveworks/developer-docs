curl --location 'https://<YOUR_INSTANCE>/v2025/sources?filters=connectorName sw "{{connector}}"' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json'
