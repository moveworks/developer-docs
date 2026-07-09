curl --request POST \
  --url https://<YOUR_UKG_HOST>/api/v1/commons/notifications/multi_review \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
  "messageIds": ["{{uuid}}"]
}'
