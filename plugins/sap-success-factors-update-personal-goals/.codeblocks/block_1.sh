curl -X POST "https://<API_SERVER_DOMAIN>/odata/v2/Goal_11" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN" \
  -d '{
    "name": "{{Goal_name}}",
    "metric": "{{metric}}",
    "userId": "{{userId}}",
    "type": "user",
    "start": "/Date({{start}})/",  
    "due": "/Date({{due}})/",    
    "category": "Goals"
  }'

