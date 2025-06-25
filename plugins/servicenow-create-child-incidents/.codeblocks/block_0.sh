curl --request POST \
     --url 'https://<instance>.service-now.com/api/now/table/incident' \
     --header 'Authorization: Bearer <ACCESS_TOKEN>' \
     --header 'Content-Type: application/json' \
     --data '{
       "parent_incident": "12345abcd6789",
       "short_description": "Investigate network outage",
       "caller_id": "user_98765",
       "urgency": "1",
       "impact": "2"
     }'

