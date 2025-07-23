curl --location 'https://<YOUR_INSTANCE>/rest/api/3/search?jql=issuetype={{issue_type}} AND status = Done AND resolution_date >= {{resolution_date}}' \
--header 'Accept: application/json' \
--header 'Authorization: Basic <API_TOKEN>'
