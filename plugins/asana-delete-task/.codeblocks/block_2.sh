curl --request GET \
     --url 'https://app.asana.com/api/1.0/projects?workspace={{workspace_gid}}&team={{team_gid}}' \
     --header 'accept: application/json'
     --header 'authorization: Bearer {{personal_access_token}}'
