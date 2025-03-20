curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/search?jql=issuetype=Epic AND statusCategory!= Done&fields=key,summary,duedate' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
