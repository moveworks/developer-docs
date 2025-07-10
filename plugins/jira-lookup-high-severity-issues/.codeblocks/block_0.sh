curl --request GET
--location 'https://<YOUR_DOMAIN>/rest/api/3/search?jql=statusCategory%20!%3D%20Done%20AND%20priority%20IN%20(%22Highest%22%2C%20%22High%22)%20AND%20created%20%3E%3D%20-{{days}}d&fields=key%2Csummary%2Cstatus%2Cpriority%2Ccreated' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
