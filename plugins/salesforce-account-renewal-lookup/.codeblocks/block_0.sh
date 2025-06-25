curl --request GET \
--location 'https://<YOUR_DOMAIN>/services/data/v62.0/query?q=SELECT%20Id%2CAccount.Name%2CAccount.Id%2CStartDate%2C%20EndDate%2C%20Status%2CContractTerm%20FROM%20Contract%20WHERE%20Account.Name%20LIKE%20%27{{ACCOUNT_NAME}}1%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

