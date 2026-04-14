curl --location 'https://your.domain.com/api/image/v1.0/expenseentry/{{expense_entry_id}}' \
--header 'Authorization: Bearer {{generated_bearer_token}}' \
--header 'Content-Type: image/jpeg' \
--data-binary '@{{receipt_file_path}}'
