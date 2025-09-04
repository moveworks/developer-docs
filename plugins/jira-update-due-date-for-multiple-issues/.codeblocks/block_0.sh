curl --location 'https://<your-instance>/rest/api/3/search/jql?jql=project%3D%22{{project-key}}%22%20AND%20issuetype%3D{{issue-type}}%20AND%20status!%3D%22Done%22%20AND%20assignee%3D%22{{assignee-email}}%22&fields=key%2Csummary&maxResults=100' \
--header 'Authorization: Basic <your-credentials>'
