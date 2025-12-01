curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/query/?q=SELECT+Id%2C+Name%2C+StageName%2C+Amount%2C+CloseDate%2C+LastActivityDate+FROM+Opportunity+WHERE+{{filter_query}}+AND+IsClosed+%3D+false+ORDER+BY+LastModifiedDate+DESC+LIMIT+50' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
