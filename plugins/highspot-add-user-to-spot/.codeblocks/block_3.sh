curl --location 'https://api.highspot.com/v1.0/spots/6138e1ca2505892258c9c6fc/users?role=viewer' \
--header 'Content-Type: application/json' \
--header 'hs-user: your.name@company.com' \
--header 'Authorization: Basic dXNlcm5hbWU6cGFzc3dvcmQ=' \
--data-raw '{
  "users": [
    "teammate@company.com"
  ]
}'
