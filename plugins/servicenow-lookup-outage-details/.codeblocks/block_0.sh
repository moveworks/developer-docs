curl --location 'https://<YOUR_INSTANCE>/api/now/table/cmdb_ci_outage?sysparm_query=<COMPOSED_QUERY>^ORDERBYDESCsys_created_on&sysparm_display_value=all&sysparm_limit=25&sysparm_fields=<FIELD_LIST>' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Accept: application/json'
