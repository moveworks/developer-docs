curl --location --request PATCH 'https://us2.api.concursolutions.com/expensereports/v4/users/{user_id}/context/MANAGER/reports/{report_id}/approve' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {auth_token}' \
--data '{
    "comment":"Approved through API"
}'
