curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "short_description": "<SHORT_DESCRIPTION>",
  "urgency": "<URGENCY>"
}'
