curl --location 'https://<YOUR_DOMAIN>/services/data/v60.0/query/?q=SELECT+Risk_Description__c%2C+Name%2C+Account__c%2C+Risk_Impact__c%2C+Risk_Probability__c+FROM+Risk_Type__c+WHERE+Account__r.Name+%3D+%27<account_name>%27' \
--header'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

