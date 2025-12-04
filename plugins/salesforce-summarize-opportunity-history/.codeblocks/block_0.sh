curl --location 'https://{{YOUR_INSTANCE}}/services/data/v62.0/query/?q=SELECT%20Id%2C%20Name%2C%20StageName%2C%20Amount%2C%20AccountId%2C%20CloseDate%2C%20CreatedDate%2C%20LastActivityDate%2C%20Owner.Name%2C%20Owner.Email%2C%20Account.Name%2C%20Type%2C%20LeadSource%2C%20Probability%2C%20ForecastCategory%20FROM%20Opportunity%20WHERE%20IsClosed%20%3D%20FALSE%20AND%20{{filter_query}}%20ORDER%20BY%20CreatedDate%20DESC%20LIMIT%20200' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
