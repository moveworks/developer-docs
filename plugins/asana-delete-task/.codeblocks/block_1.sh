curl --request GET \
     --url https://app.asana.com/api/1.0/users/{{user_gid}}/teams?workspace={{workspace_gid}} \
     --header 'accept: application/json'
     --header 'authorization: Bearer {{personal_access_token}}'
