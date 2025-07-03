curl --request GET
--location 'https://<YOUR_DOMAIN>/rest/api/3/search?fields=summary%2Cstatus%2Cproject%2Cassignee%2Cduedate&fields=summary%2Cstatus%2Cproject%2Cassignee%2C&maxResults=100&jql=assignee%20%3D%20%22{{email}}%22%20AND%20statusCategory%20!%3D%20Done%20AND%20duedate%20%3E%3D%20now()%20AND%20duedate%20%3C%3D%203d' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
