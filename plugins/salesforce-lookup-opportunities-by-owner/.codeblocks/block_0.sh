curl --request GET \
--location 'https://<YOUR_DOMAIN>/services/data/v62.0/query?q=SELECT%20Account.Name%2C%20Name%2C%20StageName%2C%20Amount%2C%20CloseDate%20FROM%20Opportunity%20WHERE%20Owner.Name%20LIKE%20%27%25{{Owner_Name}}%25%27%20AND%20AccountId%20!%3D%20null' \
--header 'Content-Type: application/json'

