curl --location 'https://<YOUR_INSTANCE>/rest/api/3/issue/archive' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Basic <API_TOKEN>' \
--data '{
  "jql": "issuetype = {{jira_issue_type}} AND status = Done AND resolutiondate <= {{jira_resolution_date}}"
}'
