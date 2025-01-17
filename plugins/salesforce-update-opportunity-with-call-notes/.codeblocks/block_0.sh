curl --location 'https://<YOUR_DOMAIN>.my.Salesforce.com/services/data/v63.0/query/?q=SELECT%20Id%2C%20Name%20FROM%20Opportunity%20WHERE%20Account.Name%20%3D%20%27<ACCOUNT_NAME>%27%20AND%20StageName%20%3D%20%27Qualify%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
