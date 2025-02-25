curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/project/search?jql=summary~"{{keyword}}"&fields=key,summary,status'\
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
