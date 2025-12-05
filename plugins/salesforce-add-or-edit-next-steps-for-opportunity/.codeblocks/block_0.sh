curl --location 'https://arbaan-dev-ed.my.salesforce.com/services/data/v64.0/query/?q=SELECT+Id%2C+Name%2C+StageName%2C+Amount%2C+CloseDate%2C+LastActivityDate%2C+LastModifiedDate%2C+CreatedDate%2C+NextStep%2C+Owner.Id%2C+Owner.Name%2C+Owner.Email%2C+Account.Id%2C+Account.Name%2C+Type%2C+LeadSource%2C+Description+FROM+Opportunity+WHERE+{{{filter_query}}}+ORDER+BY+CreatedDate+ASC+LIMIT+200' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--header 'Content-Type: application/json'
