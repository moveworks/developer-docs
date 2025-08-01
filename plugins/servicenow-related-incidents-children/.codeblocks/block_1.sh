curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "short_description": "<short_description>"
}'
