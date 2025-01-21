curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/project/search?jql=issuetype=Epic AND summary~"{{EPIC_NAME}}"&fields=key,summary'\
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
