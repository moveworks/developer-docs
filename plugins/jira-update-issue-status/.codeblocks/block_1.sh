curl --request POST \
  --url 'https://your-domain.atlassian.net/rest/api/3/issue/{{issue_key}}/transitions'\
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
  --data '{
    "transition":
    {
      "id": "{{status_id}}"
    }
}'
