curl --request GET \
  --url 'https://graph.microsoft.com/v1.0/users/{{email}}/calendarView?startDateTime={{start_date_range}}&endDateTime={{end_date_range}}' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --header 'Prefer: outlook.timezone="{{timezone}}"'
