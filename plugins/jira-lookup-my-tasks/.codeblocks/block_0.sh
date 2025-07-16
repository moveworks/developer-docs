curl --request GET
--location 'https://<YOUR_DOMAIN>/rest/api/3/search?jql=assignee="{{email}}" AND statusCategory != Done &fields=summary,status,project,key,duedate' \
--header 'Authorization: Basic <API_TOKEN>' \
--header 'Accept: application/json' \
