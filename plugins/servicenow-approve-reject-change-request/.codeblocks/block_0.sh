curl --location 'https://<API_SERVER_DOMAIN>/api/now/table/sysapproval_approver?sysparm_query=state=requested^approver.email=<USER_EMAIL>^sysapproval.table=change_request&sysparm_fields=sys_id,approver,sysapproval,state' \
--header 'Authorization: Bearer <Your_Access_Token>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
