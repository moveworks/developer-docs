curl --location 'https://{{your-salesforce-instance}}.my.salesforce.com/services/data/v58.0/query?q=SELECT%20Name%20FROM%20Contact%20LIMIT%2010' \
--header 'Authorization: Bearer {{generated_bearer_token}}'
