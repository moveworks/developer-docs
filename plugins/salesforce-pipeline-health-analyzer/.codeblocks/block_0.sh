curl --location 'https://yourInstance.salesforce.com/services/data/v64.0/query/?q=SELECT+FIELDS(ALL)+FROM+Opportunity+WHERE+{{{filter_query}}}+ORDER+BY+CloseDate+DESC+LIMIT+200' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--header 'Content-Type: application/json'
