curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/agile/1.0/board?projectKeyOrId={projectKeyOrId}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
