      curl --location 'https://your.domain.com/api/v3.0/expense/entries?user={{user_email_address}}&reportID=<reportID>' \
 --header 'Accept: application/json' \
 --header 'Authorization: Bearer {{generated_bearer_token}}'
