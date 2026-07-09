curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.0/composite' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "allOrNone": false,
  "compositeRequest": [
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query?q=SELECT+Id,+Name,+StageName,+Amount,+Owner.Id,+Owner.Name,Owner.Email,+Account.Id,+Account.Name,+CloseDate,+CreatedDate,+LastActivityDate,+LastModifiedDate,+IsClosed,+IsWon+FROM+Opportunity+WHERE+Id+IN+({{opportunity_id}})",
      "referenceId": "Opportunity"
    },
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query?q=SELECT+Id,+Name,+StageName,+Amount,+Owner.Id,+Owner.Name,Owner.Email,+Account.Id,+Account.Name,+CloseDate,+CreatedDate,+LastActivityDate,+LastModifiedDate,+IsClosed,+IsWon+FROM+Opportunity+WHERE+Id+IN+({{opportunity_id}})",
      "referenceId": "OpportunityDetails"
    },
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query?q=SELECT+Id,+Subject,+ActivityDate,+CallType+FROM+Task+WHERE+WhatId+IN+({{opportunity_id}})+ORDER+BY+ActivityDate+DESC+LIMIT+50",
      "referenceId": "Task"
    },
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query?q=SELECT+Id,+Subject,+StartDateTime,+EndDateTime+FROM+Event+WHERE+WhatId+IN+({{opportunity_id}})",
      "referenceId": "Event"
    }
  ]
}'

