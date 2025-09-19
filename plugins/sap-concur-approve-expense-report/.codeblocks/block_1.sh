curl --request GET \
  --url 'https://<YOUR_INSTANCE>/expensereports/vX/users/{manager_id}/context/MANAGER/reportsToApprove' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer {{ACCESS_TOKEN}}'
