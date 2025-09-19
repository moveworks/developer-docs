curl --location 'https://<YOUR_DOMAIN>/api/now/table/change_request?sysparm_query=short_descriptionLIKE{{short_desc}}%5EstateIN0%2C3&sysparm_fields=sys_id%2Cnumber%2Cshort_description%2Cdescription%2Cimplementation_plan%2Ctest_plan%2Cbackout_plan%2Ccategory%2Capproval%2Cstate%2Cwork_notes%2Cclose_notes' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
