curl -X POST "https://<tenantURL>/odata/v2/Upsert" \
  -H "Content-Type: application/json" \
  -d '{
    "__metadata": {
      "uri": "EmployeeTime('\''{{externalCode}}'\'')"
    },
    "approvalStatus": "CANCELLED"
  }'
