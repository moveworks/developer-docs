curl --location 'https://<API_Server_domain>/services/data/v63.0/query?q=SELECT+Id%2C+Name%2C+Status%2C+Status_Comment__c%2C+Owner.Email+FROM+Quote+WHERE+Owner.Email%3D%27<email>%27+AND+Name%3D%27<quote_name>%27+AND+Status+NOT+IN+(%27Approved%27%2C%27Accepted%27)' \
--header 'Authorization: Bearer <Your Access Token>'
