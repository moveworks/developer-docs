curl --request POST \
     --url https://app.asana.com/api/1.0/tasks \
     --header 'accept: application/json' \
     --header 'authorization: Bearer {{personal_access_token}}' \
     --header 'content-type: application/json' \
     --data '{
       "data": 
        {
          "name": "{{task_name}}",
          "notes": "{{task_description}}",
          "due_on": "{{due_date}}",
          "start_on": "{{start_on}}",
          "assignee": "{{assignee_gid}}",
          "projects": ["{{project_gid}}"]
        }
     }'
