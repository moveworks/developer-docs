curl --location 'https://<YOUR_INSTANCE>/v3/search' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "indices": ["identities"],
  "query": {
    "query": "{{filter_query}}"
  }
}'
