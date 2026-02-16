curl --location --request PATCH 'https://<YOUR_INSTANCE>/api/now/table/alm_asset/{{ASSET_SYS_ID}}' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "install_status": "{{INSTALL_STATUS}}"
}'
