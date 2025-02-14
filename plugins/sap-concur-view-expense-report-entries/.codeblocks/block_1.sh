curl --request GET \
  --url 'https://your-domain.com/api/v3.0/expense/entries?user={{user.email_addr}}&reportID={{report_id}}
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
