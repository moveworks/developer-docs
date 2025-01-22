curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/sobjects/Account/' \
--header 'Authorization: Bearer' \
--header 'Content-Type: application/json' \
--data '{
  "Name" : ":<Account_Name>",
  "BillingStreet": "<Billing_Streeet>",
  "BillingCity": "<Billing_City>",
  "BillingState": "<Billing_state>",
  "BillingCountry": "<BillingCountry"
}'
