curl --location --request POST 'https://{{YOUR_INSTANCE}}/api/v1/computers-inventory' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--data-raw '{
  "udid": "{{udid}}",
  "general": {
    "name": "{{device_name}}"
  },
  "userAndLocation": {
    "email": "{{assigned_user_email}}",
    "departmentId": "{{department_id}}"
  },
  "hardware": {
    "model": "{{model}}", 
    "modelIdentifier": "{{model_identifier}}",
    "serialNumber": "{{serial_number}}"
  },
  "operatingSystem": {
    "name": "{{os_name}}",
    "version": "{{os_version}}"
  }
}'
