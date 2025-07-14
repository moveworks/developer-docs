curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/change_request' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "chg_model": "<CHANGE_MODEL_SYS_ID>",
   "short_description": "<SHORT_DESCRIPTION>",
   "description": "<DESCRIPTION>",
   "cmdb_ci": "<CONFIGURATION_ITEM>"
   }'
