curl --location --request POST 'https://<YOUR_INSTANCE>/api/sn_wsd_core/wsd_unified_search/users_and_locations' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --data '{
    "search_term": "Building 1",
    "filterConfig": {"sn_wsd_core_building": "parent.nameLIKECalifornia Campus"},
    "options": {},
    "sysparam_offset": 0,
    "sysparam_limit": 25
  }'
