curl --request GET \
  --url 'https://<YOUR_INSTANCE>/rest/api/2/search?fields=summary,status,project,assignee&jql=assignee = "<EMAIL_ID>" AND statusCategory != "Done"&maxResults=100' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
