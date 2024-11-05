curl --location --globoff 'https://{{your-salesforce-instance}}.my.salesforce.com/services/data/v58.0/query?q=SELECT%20Name%2CType%2CDescription%2CId%2CWebsite%2COwner.Name%20FROM%20Account%20WHERE%20Name%20LIKE%20%27{{query}}%27' \
--header 'Authorization: Bearer {{generated_bearer_token}}'
