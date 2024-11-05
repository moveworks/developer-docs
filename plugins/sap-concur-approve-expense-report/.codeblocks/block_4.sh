curl --location --request PATCH 'https://us.api.concursolutions.com/expensereports/v4/users/{user_id}/context/MANAGER/reports/{report_id}/sendBack' \
--header 'Authorization: Bearer {auth_token}' \
--header 'Content-Type: application/json' \
--data '{
    "comment":"Rejecting",
    "expenseRejectedComment": "Rejecting Report through API"
}'
