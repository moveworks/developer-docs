  curl --location 'https://us2.api.concursolutions.com/api/v3.0/expense/reports?user={{user_email_address}}&limit=10' \
 --header 'Accept: application/json' \
 --header 'Authorization: Bearer {{generated_bearer_token}}'
