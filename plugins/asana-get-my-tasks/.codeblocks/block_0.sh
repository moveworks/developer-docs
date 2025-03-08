curl --request GET \
  --url 'https://app.asana.com/api/1.0/users/{{user_gid}}/user_task_list' \
  --header 'accept: application/json' \
  --header 'authorization: Bearer <Your Asana PAT>'
