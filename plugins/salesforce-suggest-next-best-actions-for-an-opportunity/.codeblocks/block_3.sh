curl --location 'https://{{YOUR_INSTANCE_DOMAIN}}/services/data/vXX.0/composite' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--data-raw '{
  "allOrNone": false,
  "compositeRequest": [
    {
      "method": "GET",
      "url": "/services/data/v62.0/sobjects/Opportunity/{{opportunity_id}}",
      "referenceId": "Opportunity"
    },
    {
      "method": "GET",
      "url": "/services/data/v62.0/query?q=SELECT+CreatedDate,StageName,Amount,Probability,ExpectedRevenue+FROM+OpportunityHistory+WHERE+OpportunityId=%27{{opportunity_id}}%27+ORDER+BY+CreatedDate+DESC",
      "referenceId": "OpportunityHistory"
    },
    {
      "method": "GET",
      "url": "/services/data/v62.0/query?q=SELECT+Id,Subject,Status,Priority,Owner.Name,Owner.Email,Description,CreatedDate,LastModifiedDate+FROM+Task+WHERE+WhatId=%27{{opportunity_id}}%27+ORDER+BY+CreatedDate+DESC+LIMIT+50",
      "referenceId": "Tasks"
    },
    {
      "method": "GET",
      "url": "/services/data/v62.0/query?q=SELECT+Id,Subject,StartDateTime,EndDateTime,Owner.Name,Description,Location,CreatedDate,LastModifiedDate+FROM+Event+WHERE+WhatId=%27{{opportunity_id}}%27+ORDER+BY+StartDateTime+DESC+LIMIT+50",
      "referenceId": "Events"
    },
    {
      "method": "GET",
      "url": "/services/data/v62.0/query?q=SELECT+Id,Title,Body,CreatedDate,CreatedBy.Name+FROM+Note+WHERE+ParentId=%27{{opportunity_id}}%27+ORDER+BY+CreatedDate+DESC",
      "referenceId": "Notes"
    },
    {
      "method": "GET",
      "url": "/services/data/v62.0/query?q=SELECT+ContactId,Contact.Name,Contact.Email,Role,IsPrimary+FROM+OpportunityContactRole+WHERE+OpportunityId=%27{{opportunity_id}}%27",
      "referenceId": "ContactRoles"
    }
  ]
}'
