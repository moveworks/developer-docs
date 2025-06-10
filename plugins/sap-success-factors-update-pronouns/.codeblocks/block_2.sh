curl --location 'https://<YOUR_INSTANCE>/odata/v2/upsert?%24format=json' \
--header 'Authorization: Bearer ' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '[
{
                "__metadata": {
                    "uri": "<YOUR_INSTANCE>/odata/v2/User('\''userId'\'')",
                    "type": "SFOData.User"
                },
    "userId": "{{userId}}",
    "pronouns": "{{pronouns}}"
  }
]

'
