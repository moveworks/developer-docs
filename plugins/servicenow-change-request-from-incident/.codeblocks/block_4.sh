curl --location --request PATCH 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident/<INCIDENT_SYS_ID>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "rfc": "<CHANGE_REQUEST_SYS_ID>"
}'

