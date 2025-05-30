curl --request GET \
  --url "https://<API_SERVER_DOMAIN>/odata/v2/SimpleGoal?$filter=userId%20eq%20'{{userId}}'%20and%20type%20eq%20'user'" \
  --header "Accept: application/json" \
  --header "Authorization: Bearer <YOUR_ACCESS_TOKEN>"
