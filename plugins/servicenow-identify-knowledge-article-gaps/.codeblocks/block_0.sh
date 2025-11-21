curl --location 'https://<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=active=true^opened_at>={{time_range}}^knowledge=false&sysparm_fields=short_description,category,subcategory,cmdb_ci,assignment_group,knowledge,sys_id&sysparm_limit=500' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
