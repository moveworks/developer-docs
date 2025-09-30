curl --location 'https://<YOUR_INSTANCE>/odata/v2/upsert' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--data-raw '[
  {
    "__metadata": {
      "uri": "PerEmergencyContacts"
    },
    "personIdExternal": "{{personIdExternal}}",
    "name": "{{contact_name}}",
    "relationship": "{{relationship}}",
    "email": "{{email}}",
    "phone": "{{phone}}",
    "primaryFlag": "{{primaryFlag}}"
  }
]'
