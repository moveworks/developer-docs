curl --location 'https://<YOUR_INSTANCE>/rest/api/3/search?jql=created >= {{create_date}} AND "{{sla_field}}" = breached() AND priority = {{priority}} AND fields= priority,key' \
--header 'Accept: application/json' \
--header 'Authorization: Basic <API_TOKEN>'
