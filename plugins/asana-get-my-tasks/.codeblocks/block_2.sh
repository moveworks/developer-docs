curl --request GET \
     --url 'https://app.asana.com/api/1.0/user_task_lists/{{user_task_list_gid}}/tasks?opt_fields=memberships.project.name,name,completed_at,completed_by.name,completed_at,memberships.section.name,created_at,completed_by,due_on' \
     --header 'accept: application/json' \
     --header 'authorization: Bearer <Your Asana PAT>'
