curl --location  'https://<YOUR_INSTANCE>/api/approvals?approvable-type={{approvable_type}}&created_at[gt_or_eq]={{start_date}}&created_at[lt_or_eq]={{end_date}}&status={{status}}&limit=50&offset=0' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{access_token}}'
