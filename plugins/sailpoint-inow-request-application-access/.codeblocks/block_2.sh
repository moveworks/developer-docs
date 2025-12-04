curl --location 'https://<YOUR_INSTANCE>/v2025/search?limit=50&offset=0&sorters=-created' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--data '
{ 
  "indices": ["entitlements"], 
  "query": { 
    "query": "source.name:*{{source_name}}* AND requestable:true" 
  }, 
  "queryResultFilter": { 
    "includes": ["field1","field2"...]
  }
}'
