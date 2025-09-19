curl --request PATCH\
  --url 'https://<YOUR_INSTANCE>/expensereports/vX/users/{{manager_id}}/context/MANAGER/reports/{{report_id}}/{{status}}' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer {{ACCESS_TOKEN}}'
  --data-raw '{"comment":"{{comment}}"}'
