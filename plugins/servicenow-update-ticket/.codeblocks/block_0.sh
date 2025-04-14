curl --request PATCH \
     --url 'https://<instance>.service-now.com/api/now/table/incident/{{task_sys_id}}' \
     --data '{
       "assigned_to": "8971ac838323021014e0c4a6feaad3a2",
       "urgency": "1",
       "priority": "2",
       "state": "2",
       "short_description": "WiFi issue in MTV office"
     }'
