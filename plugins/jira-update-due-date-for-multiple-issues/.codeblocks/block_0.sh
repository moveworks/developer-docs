curl --location 'https://<your-instance>/rest/api/3/search?jql=project%20%3D%20%22<project-key>%22%20AND%20issuetype%20%3D%20<issue-type>%20AND%20status%20!%3D%20Done&startAt=0&maxResults=100' \
--header 'Accept: application/json' \
--header 'Authorization: Basic <your-credentials>'
