curl --location 'https://<YOUR_INSTANCE_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+Name,+Industry,+Type+FROM+Account' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
