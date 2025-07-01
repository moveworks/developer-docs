curl --location 'https://<instance>.service-now.com/api/now/table/sys_history_line?sysparm_fields=new%2Cold%2Clabel%2Cupdate&sysparm_query=set.id%3D<TICKET_ID>%5ElabelINResolution%20notes%2CResolution%20Code%2CPriority%2CUrgency%2CNumber%2CShort%20description%2CAdditional%20comments%2CAssignment%20group%2CAssigned%20to%2CState' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
