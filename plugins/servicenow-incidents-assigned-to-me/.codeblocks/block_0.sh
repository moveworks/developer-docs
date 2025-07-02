curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident?sysparm_query=assigned_toemail%3D<USER_EMAIL>sysparm_fields=number%2Cshort_description%2Curgency%2Cstate%2Cdescription' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

