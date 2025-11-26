curl --location 'https://<YOUR_INSTANCE>/api/now/table/alm_asset?sysparm_query={{FILTER_QUERY}}&sysparm_fields=sys_id%2Cname%2Casset_tag%2Cdisplay_name%2Cassigned_to.name%2Cdepartment.name%2Cowned_by%2Casset_tag%2Cmodel_category.name%2Ccompany.name%2Cstate%2Ccost&sysparm_limit=100' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
