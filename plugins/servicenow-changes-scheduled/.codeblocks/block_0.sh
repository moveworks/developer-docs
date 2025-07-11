curl --location 'https://<YOUR_DOMAIN>/api/now/table/change_request?sysparm_query=start_date%3Ejavascript%3Ags.now()%5Estart_dateISNOTEMPTY%5Eend_dateISNOTEMPTY%5EstateNOT%20IN6%2C7%2C-5%5EORDERBYstart_date&sysparm_fields=number%2Cshort_description%2Cstart_date%2Cend_date&sysparm_limit=10&sysparm_offset=0' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
