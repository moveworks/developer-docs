curl --location  'https://<YOUR_INSTANCE>/api/approvals?created_at[gt_or_eq]={{start_date}}&created_at[lt_or_eq]={{end_date}}&limit=100&offset=0&order_by=desc' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{access_token}}'
