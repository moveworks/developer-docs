curl --location '{{Base_URL}}/api/v2/statements' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{snowflake_access_token}}' \
--data '{
  "statement": "SHOW DATABASES;"
}'
