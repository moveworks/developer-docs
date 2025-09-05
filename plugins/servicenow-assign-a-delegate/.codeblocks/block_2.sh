curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user_delegate' \
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
    "notifications": {{all_notifications}},
    "invitations": {{meeting_invitations}}
}'
