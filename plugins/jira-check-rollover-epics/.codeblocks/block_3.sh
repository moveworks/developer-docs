curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/issue/{issue_key}/changelog' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
