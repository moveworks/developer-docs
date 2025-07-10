curl --request GET
--location 'https://<YOUR_DOMAIN>/rest/api/3/search?jql=assignee="{{email}}" AND statusCategory != Done AND duedate is not EMPTY ORDER BY duedate ASC&fields=summary,status,project,key,duedate' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
