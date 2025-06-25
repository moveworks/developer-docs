curl --request GET \
     --url 'https://app.asana.com/api/1.0/projects?workspace=<workspace_gid>&team={{team_gid}}&opt_fields=completed' \
     --header 'accept: application/json' \
     --header 'authorization: Bearer <Your Asana PAT>'
