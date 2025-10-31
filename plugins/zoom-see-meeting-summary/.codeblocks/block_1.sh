curl --request GET \
  --url 'https://api.zoom.us/v2/meetings/{{meeting_uuid}}/meeting_summary' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
