curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident?sysparm_query=sys_created_onRELATIVEGE%40hour%40ago%40<hours>%5Eshort_descriptionLIKE<KEYWORD>&sysparm_fields=number%2Cshort_description%2Csys_id' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
