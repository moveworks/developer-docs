curl --request GET \
  --url 'https://us2.api.concursolutions.com/api/v3.0/expense/reports?user={{user_email_address}}&limit=10' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
