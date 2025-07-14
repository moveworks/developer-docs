curl --location 'https://<YOUR_INSTANCE>.atlassian.net/rest/api/3/search?jql=project%3D<PROJECT_NAME>+AND+assignee+IS+EMPTY&fields=key%2Csummary%2Cstatus&maxResults=100' \
--header 'Authorization: Basic <YOUR_CREDENTIALS>' \
--header 'Accept: application/json' 
