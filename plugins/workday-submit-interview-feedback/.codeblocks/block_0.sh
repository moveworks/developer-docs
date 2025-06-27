curl --location 'https://<YOUR_DOMAIN>/api/recruiting/v3/<TENANT>/interviews?interviewStatus=SCHEDULED&interviewStatus=PENDING_FEEDBACK&interviewStatus=AWAITING_ME&interviewStatus=COMPLETED' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
