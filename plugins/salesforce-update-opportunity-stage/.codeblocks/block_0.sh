curl --request GET \
  --location 'https://<YOUR-DOMAIN>.my.salesforce.com/services/data/v63.0/query/?q=SELECT+Id%2C+Name%2C+StageName+FROM+Opportunity+WHERE+Account.Name+LIKE+%27%25{ACCOUNT_NAME}%25%27' \
  
