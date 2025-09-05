curl --location 'https://<YOUR_INSTANCE>.atlassian.net/rest/api/3/search/jql?jql=project%3D%22{{project_name}}%22%20AND%20issuetype%3D{{issuetype}}%20AND%20status%20changed%20TO%20%22{{state}}%22%20AFTER%20%22{{time_filter}}%22%20AND%20timespent%20is%20not%20EMPTY&fields=summary%2Cstatus%2Ctimetracking&maxResults=500' \
--header 'Accept: application/json' \
--header 'Authorization: Basic {{access_token}}'
