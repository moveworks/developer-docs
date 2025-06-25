curl --request GET
--location 'https://<YOUR_DOMAIN>/services/data/v62.0/query?q=SELECT%20Id%20FROM%20Opportunity%20WHERE%[20Account.Name](http://20account.name/)%20like%20%3C<ACCOUNT_NAME>%3E%20ORDER%20BY%20CloseDate%20DESC%20LIMIT%201' \
--header 'Content-Type: application/json'
