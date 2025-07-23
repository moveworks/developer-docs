curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+Name,+StageName,+%28SELECT+Id,+Name+FROM+Quotes+WHERE+Name=%27{{quote_name}}%27%29+FROM+Opportunity+WHERE+Name+LIKE+%27%25{{opportunity_name}}%25%27+AND+%28StageName=%27Qualification%27+OR+StageName=%27Qualified%27%29' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'\
--header 'Content-Type: application/json' \
