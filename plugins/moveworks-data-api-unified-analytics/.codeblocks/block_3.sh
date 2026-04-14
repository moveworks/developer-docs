curl --request GET \
  --url 'https://api.moveworks.ai/export/v1/records/users?$skip={{skip}}&$filter=last_updated_time gt '{{yesterday_date}}T06:27:58.321Z'' \
  --header 'Authorization: Bearer <API_KEY>' \
  --header 'Accept: application/json'
