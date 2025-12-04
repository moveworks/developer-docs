curl --location 'https://<YOUR_INSTANCE>/v2025/access-requests' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data 
'{ 
  "requestedForWithRequestedItems": [ 
    { 
      "identityId": "{{identity_id}}", 
      "requestedItems": [ 
        { 
          "type": "ENTITLEMENT", 
          "id": "{{entitlement_id}}", 
          "name": "{{entitlement_name}}", 
          "comment": "{{comment}}", 
          "clientMetadata": { 
            "requestedAppName": "{{source_name}}", 
            "requestedAppId": "{{source_id}}" 
          } 
        } 
      ] 
    } 
  ] 
}'
