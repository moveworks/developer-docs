curl --location 'https://<YOUR_INSTANCE>/rest/api/3/issue/<ISSUE_KEY>/comment' \
--header 'Authorization: Basic <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--data '{
  "body": {
    "type": "doc",
    "version": 1,
    "content": [
      {
        "type": "paragraph",
        "content": [
          {
            "type": "text",
            "text": "<Text>"
          }
        ]
      }
    ]
  }
}'

