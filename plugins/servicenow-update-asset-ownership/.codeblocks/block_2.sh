curl --location --request PATCH 'https://<YOUR_INSTANCE>/api/now/table/alm_asset/{{ASSET_SYS_ID}}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "owned_by": "{{USER_SYS_ID}}"
}'
