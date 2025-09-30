curl --location 'https://your.domain.com/api/v3.0/expense/reports?user={{user_email_address}}&limit=100&modifiedDateAfter=<DEFAULT_LAST_MODIFIED_SINCE_ISO_DATE>' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{generated_bearer_token}}'
