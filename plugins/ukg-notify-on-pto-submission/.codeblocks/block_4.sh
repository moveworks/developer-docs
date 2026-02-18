curl --request POST \
     --url https://<YOUR_UKG_HOST>/api/v1/commons/notifications/multi_review \
     --header 'content-type: application/json' \
     --data '{
  "messageIds": [
    "{{ids}}"
  ]
}'
