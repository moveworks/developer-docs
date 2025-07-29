curl --location 'https://<YOUR_INSTANCE>.atlassian.net/rest/api/3/search?jql=project={{project_name}}%20AND%20issuetype={{issuetype}}%20AND%20status%20changed%20TO%20%22{{state}}%22%20AND%20worklogDate%20>=%20%22{{time_filter}}%22%20AND%20timespent%20is%20not%20EMPTY&fields=summary%2Cstatus%2Ctimetracking' \
--header 'Authorization: Basic <ACCESS_TOKEN>' \
--header 'Accept: application/json'
