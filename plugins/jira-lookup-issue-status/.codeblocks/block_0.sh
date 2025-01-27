curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/issue/{issueKey}/transitions' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
