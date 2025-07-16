curl --location 'https://<YOUR_DOMAIN>/rest/api/3/search?jql=priority={{priority}}%20AND%20assignee%20IS%20EMPTY%20AND%20status%20!=%20Done%20ORDER%20BY%20created%20DESC&startAt=0&maxResults=50&fields=key,summary,priority,status,assignee' \
--header 'Accept: application/json' \
--header 'Authorization: Basic <API_TOKEN>'
