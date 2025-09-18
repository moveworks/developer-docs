curl --location 'https://<YOUR_DOMAIN>/api/now/table/incident?sysparm_query=short_descriptionLIKE{{short_desc}}%5Estate%3D6%5EORDERBYDESCsys_updated_on&sysparm_fields=sys_id%2Cnumber%2Cshort_description%2Cworkflow_state%2Ccategory%2Ckb_knowledge_base%2Csys_created_on%2Csys_created_by%2Cdescription%2Cclose_notes' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
