curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/change_request' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Cookie: <SESSION_COOKIES>' \
--data '{
  "chg_model": "<CHANGE_MODEL_SYS_ID>",
  "cmdb_ci": "<INCIDENT_SYS_ID>"
}'
