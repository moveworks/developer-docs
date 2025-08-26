curl --location 'https://<YOUR_INSTANCE>/api/v1/policies' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "name": "<package_name>",
  "enabled": true,
  "frequency": "ONCE_PER_COMPUTER",
  "trigger": "RECURRING_CHECKIN",
  "packages": [
    {
      "id": <package_id>,
      "action": "INSTALL"
    }
  ],
  "targets": {
    "computerIds": [<device_id>]
  }
}'
