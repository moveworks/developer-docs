curl --location --request GET 'https://us2.api.concursolutions.com/expensereports/v4/users/{user_id}/context/MANAGER/reportsToApprove?sort=reportDate&order=desc&includeDelegateApprovals=true' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {auth_token}' \
