curl --location 'https://<YOUR_INSTANCE>/v2025/search ' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--data-raw '
{ 
  "indices": ["identities"], 
  "query": {  
    "query": "email:{{email}}"  
  } 
}'
