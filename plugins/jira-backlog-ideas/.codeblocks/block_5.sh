curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/agile/1.0/board/26/backlog?fields=summary,status,priority,assignee&jql=(summary ~ "keyword")' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
