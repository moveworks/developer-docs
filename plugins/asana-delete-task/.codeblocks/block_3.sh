curl --request GET \
     --url 'https://app.asana.com/api/1.0/projects/{{project_gid}}/tasks?opt_fields=gid,name,notes,assignee.gid,assignee.name,assignee.email,completed,completed_at,created_at,modified_at,due_on,start_on,projects.name,tags.name,followers.name,workspace.name,dependencies.name,dependents.name,subtasks.name,subtasks.completed,subtasks.assignee.name,subtasks.due_on,subtasks.notes' \
     --header 'accept: application/json'
