curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/sys_user_delegate' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
    "user": "{{user}}",
    "delegate": "{{delegate}}",
    "starts": "{{starts}}",
    "ends": "{{ends}}",
    "approvals": {{approvals}},
    "assignments": {{assignments}},
    "all_notifications": {{all_notifications}},
    "meeting_invitations": {{meeting_invitations}}
}'
