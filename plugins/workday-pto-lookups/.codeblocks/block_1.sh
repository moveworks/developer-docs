curl --location 'https://{{domain}}.workday.com/ccx/api/absenceManagement/v1/{{instance}}/balances?worker=<workday_id_of_user>' \' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{access_token}}'
