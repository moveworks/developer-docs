curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/project/search?query={{project_name}}?' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
