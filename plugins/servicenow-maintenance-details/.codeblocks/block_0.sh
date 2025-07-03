curl --request GET
--location 'https://<YOUR_DOMAIN>/api/now/table/alm_asset?assigned_to.email={{email}}&sysparm_fields=display_name%2Cu_upcoming_maintenance_date%2Cu_upcoming_maintenance_number%2Cu_upcoming_maintenance_description%2Cu_past_maintenance_number%2Cu_past_maintenance_date%2Cu_past_maintenance_description%2Casset_tag' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
