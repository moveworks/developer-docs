curl --request GET \
--url 'https://<your-instance>/rest/api/3/search?jql=status="Waiting for approval" AND assignee="{{email}}" &startAt=0&maxResults=50' \
--header 'Authorization: Basic [base64-encoded-email:api-token](base64-encoded-email:api-token)' \
--header 'Accept: application/json'
