curl --request GET \
  --url 'https://api.moveworks.ai/export/v1/records/interactions?$skip={{skip}}&$orderby=created_time&$filter=created_time gt '{{start_date}}T00:00:00Z' and created_time lt '{{end_date}}T00:00:00Z'' \
  --header 'Authorization: Bearer <API_KEY>' \
  --header 'Accept: application/json'
