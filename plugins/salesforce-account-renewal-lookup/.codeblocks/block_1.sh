curl --request GET \
--location 'https://<YOUR_DOMAIN>/services/data/v62.0/query?q=SELECT%20Id%2CName%2CAmount%2CAccount.Name%20FROM%20Opportunity%20WHERE%20Account.Id%20LIKE%20%27%25{{ACCOUNT_ID}}%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

