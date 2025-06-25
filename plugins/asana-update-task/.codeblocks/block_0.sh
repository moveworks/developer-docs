curl --request PUT \
     --url https://app.asana.com/api/1.0/tasks/task_gid \
     --header 'accept: application/json' \
     --header 'authorization: Bearer {personal_access_token}' \
     --header 'content-type: application/json' \
     --data '
{
  "data": {
    "name": "New Task Name",
    "completed": true
  }
}
'
