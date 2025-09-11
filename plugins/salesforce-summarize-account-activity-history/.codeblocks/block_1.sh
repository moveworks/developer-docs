curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT+Id%2CName%2CAccountNumber%2CAccountSource%2CType%2CWebsite%2COwner.Name%2CIndustry%2CNumberOfEmployees%2CPhone+FROM+Account+WHERE+Name+LIKE+%27%{{ACCOUNT_NAME}}%%27+ORDER+BY+CreatedDate+DESC' \\

--header 'Authorization: Bearer <ACCESS_TOKEN>'
