curl --location 'https://<YOUR_INSTANCE_DOMAIN>/services/data/v57.0/query/?q=SELECT+FIELDS(ALL)+FROM+Opportunity+WHERE+IsWon=TRUE+AND+{{{filter_query}}}+ORDER+BY+CloseDate+DESC+LIMIT+200' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--header 'Content-Type: application/json'
