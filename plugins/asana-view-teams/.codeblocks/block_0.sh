curl --request GET \
     --url 'https://app.asana.com/api/1.0/workspaces/{workspace_gid}/teams?opt_fields=organization.name,visibility,name,' \
     --header 'accept: application/json' \
     --header 'authorization: Bearer <Your Asana PAT>'

