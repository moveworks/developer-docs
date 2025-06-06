curl --request DELETE \
     --url https://app.asana.com/api/1.0/tasks/{{task_gid}} \
     --header 'accept: application/json' \
     --header 'authorization: Bearer {{personal_access_token}}'
