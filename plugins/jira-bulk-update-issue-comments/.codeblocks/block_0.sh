curl --location 'https://<YOUR_INSTANCE>/rest/api/3/search?jql=project=<project_name> AND status!="Done" AND updated>=<date> ORDER BY created DESC' \
--header 'Authorization: Basic <ACCESS_TOKEN>' \
--header 'Accept: application/json'
