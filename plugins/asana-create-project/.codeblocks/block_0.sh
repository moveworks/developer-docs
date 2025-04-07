curl --request POST \
     --url https://app.asana.com/api/1.0/projects \
     --header 'accept: application/json' \
     --header 'authorization: Bearer {{personal_access_token}}' \
     --header 'content-type: application/json' \
     --data '{
               "data": {
                   "name": "New Project Name",
                   "team": "{{team_gid}}",
                   "notes": "This is the description of the new project.",
                   "workspace": "{{workspace_gid}}"
               }
             }'
