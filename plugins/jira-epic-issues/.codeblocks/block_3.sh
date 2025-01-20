curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/project/search?jql=parent={{EPIC_KEY}}&fields=summary,assignee,emailAddress,status'\
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
