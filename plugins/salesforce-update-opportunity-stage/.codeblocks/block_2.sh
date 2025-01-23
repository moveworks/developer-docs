curl --request GET \
  --location 'https://<YOUR-DOMAIN>.my.salesforce.com/services/data/v62.0/query/?q=SELECT+Id%2C+Name%2C+StageName+FROM+Opportunity+WHERE+Account.Name+LIKE+%27%25{ACCOUNT_NAME}%25%27' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Cookie: BrowserId=9VR-DLuzEe-k2PdqQgLCBA; CookieConsentPolicy=0:1; LSKey-c$CookieConsentPolicy=0:1'
