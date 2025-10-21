curl --location 'https://<YOUR_INSTANCE>.api.identitynow.com/v3/search' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "indices": ["identities"],
  "query": {
    "query": "{{filter_query}}"
  },
  "queryResultFilter": {
    "includes": ["field1", "field2",...]
  }
}'
