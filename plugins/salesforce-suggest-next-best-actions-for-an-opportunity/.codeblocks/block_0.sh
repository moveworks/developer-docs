curl --location 'https://{{YOUR_INSTANCE_DOMAIN}}/services/data/vXX.0/query?q=SELECT Id, Name, Amount, StageName, Owner.Name, Owner.Email, AccountId, Account.Name, CreatedDate FROM Opportunity WHERE {{filter_query}} ORDER BY LastModifiedDate DESC LIMIT 50' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
