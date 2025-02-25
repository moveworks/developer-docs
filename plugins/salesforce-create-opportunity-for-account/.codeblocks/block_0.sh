curl --request GET \
--location 'https://<YOUR_DOMAIN>.my.salesforce.com/services/data/v58.0/query?q=SELECT+Id+FROM+Account+WHERE+Name+LIKE+%27%25<ACCOUNT_NAME>%25%27' \--data ''

