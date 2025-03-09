curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/query/?q=SELECT+Id,+Name,+Account.Name,+CloseDate+FROM+Opportunity+WHERE+Account.Name+LIKE+%27%25{{Account_Name}}%25%27+ORDER+BY+CloseDate+DESC+LIMIT+1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

