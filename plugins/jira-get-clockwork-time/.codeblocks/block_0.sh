
curl --location 'https://<YOUR_INSTANCE>.atlassian.net/rest/api/3/search?jql=project%3D<PROJECT_NAME>%20AND%20worklogDate%20%3E%3D%20<TIMERANGE>&fields=key%2Cworklog&maxResults=100' \
--header 'Authorization: Basic <ACCESS_TOKEN>' \
--header 'Accept: application/json' 
