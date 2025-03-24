curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/query/?q=SELECT+Id+StartDate+Status+EndDate+AccountId+ContractNumber+OwnerId+FROM+Contract+WHERE+Account.Name+LIKE+%27%25<ACCOUNT_NAME>%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
