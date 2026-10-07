curl --location 'https://<YOUR_INSTANCE>/api/now/table/sn_wsd_core_space?sysparm_fields=name%2Csys_id%2Cbuilding.name%2Cbuilding.sys_id%2Cbuilding.time_zone&sysparm_query=active%3Dtrue%5Eis_reservable%3Dtrue%5EnameLIKERedwood' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Accept: application/json'
