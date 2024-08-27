curl --location --globoff 'https://{{org}}.coupacloud.com/api/approvals?updated-at[gt_or_eq]=2024-08-08&approvable_type=RequisitionHeader&status=pending_approval' \
--header 'Authorization: Bearer {{coupa_auth_token}}' \
--header 'Accept: application/json' \
