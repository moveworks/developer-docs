curl --request GET \
  --url 'https://api.zoom.us/v2/report/users/{{user_id}}/meetings?from={{from_date}}&to={{to_date}}' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
