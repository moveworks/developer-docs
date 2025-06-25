     curl --location 'https://your.domain.com/api/v3.0/expense/reports?user={{user_email_address}}&limit=25&modifiedDateAfter=<last_30_days>' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{generated_bearer_token}}'
