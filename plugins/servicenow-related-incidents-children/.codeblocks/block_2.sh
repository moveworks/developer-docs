curl --location --request PUT 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident/<CHILD_INCIDENT_SYS_ID>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "parent_incident": "<PARENT_INCIDENT_SYS_ID>"
}'
