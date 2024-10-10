curl --location --request GET '{{sailpoint_url}}/identityiq/plugin/rest/moveworks-plugin/object/WorkItem?limit=250&filter=((%21modified.isNull()%20%26%26%20modified%3E%3DDATE$<TIMESTAMP>)%20%7C%7C%20(modified.isNull()%20%7C%7C%20created%3E%3DDATE$<TIMESTAMP>))%20%26%26%20(type!%3D%22Certification%22%20%26%26%20type!%3D%22Event%22)' \
--header 'Authorization: Bearer {{access_token}}'
