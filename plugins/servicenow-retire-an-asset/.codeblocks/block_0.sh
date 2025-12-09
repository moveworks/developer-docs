curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_choice?sysparm_query=name%3Dalm_asset%5Eelement%3Dinstall_status&sysparm_fields=value%2Clabel%2Csequence&sysparm_limit=50' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
