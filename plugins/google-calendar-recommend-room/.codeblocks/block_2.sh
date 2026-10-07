curl --request GET \
  --url 'https://www.googleapis.com/admin/directory/v1/customer/my_customer/resources/calendars?query=buildingId="{{building_name}}" AND floorName={{floor}}' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
