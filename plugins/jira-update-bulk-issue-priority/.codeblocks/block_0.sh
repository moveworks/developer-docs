curl --location 'https://<YOUR_INSTANCE>/rest/api/3/search?jql=issuetype={{issue_type}} AND assignee="{{email}}" AND statusCategory!=Done AND created >= {{created_range}}' \
--header 'Accept: application/json' \
--header 'Authorization: Basic <API_TOKEN>'
