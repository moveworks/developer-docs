curl --location --request GET 'https://us2.api.concursolutions.com/api/v3.0/expense/reports?user=ALL&submitDateAfter={modified_date_after}&ApprovalStatusCode=A_PEND' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {auth_token}' \
