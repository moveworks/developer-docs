curl --location 'https://<YOUR_INSTANCE>/api/now/table/alm_asset?sysparm_query=asset_tag=<ASSET_TAG>&sysparm_fields=display_name,asset_tag,purchase_date,warranty_expiration,install_status,u_coverage' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
