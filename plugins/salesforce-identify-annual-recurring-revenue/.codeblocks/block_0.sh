curl --location '<YOUR_INSTANCE>.salesforce.com/services/data/v60.0/query?q=SELECT+SUM(ARR__c)+totalARR+FROM+Opportunity+WHERE+Account.Name+like+<Account_Name>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

