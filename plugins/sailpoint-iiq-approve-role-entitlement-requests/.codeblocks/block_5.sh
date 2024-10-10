curl --location --request PUT '{{sailpoint_url}}/identityiq/plugin/rest/moveworks-plugin/object/WorkItem/{{workitem_id}}' \
--header 'Content-Type: application/json'
--header 'Authorization: Bearer {{access_token}}'
--data '{
    "approver": "{{approver_id}}",
    "state": "Finished",
    "comment": "I have approved this request"
}'
