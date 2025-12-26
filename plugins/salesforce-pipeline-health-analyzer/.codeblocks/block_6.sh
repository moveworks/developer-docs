curl --location --request POST 'https://yourInstance.salesforce.com/services/data/v64.0/composite' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--header 'Content-Type: application/json' \
--data-raw '{
  "allOrNone": false,
  "compositeRequest": [
    {
      "method": "GET",
      "referenceId": "opportunities",
      "url": "/services/data/v64.0/query/?q=SELECT+Id,+Name,+StageName,+Amount,+ForecastCategory,+Probability,+Type,+LeadSource,+NextStep,+Description,+Owner.Id,+Owner.Name,+Owner.Email,+Account.Id,+Account.Name,+CloseDate,+CreatedDate,+LastActivityDate,+LastModifiedDate,+IsClosed,+IsWon,+FiscalQuarter,+FiscalYear+FROM+Opportunity+WHERE+Id+IN+({{OPPORTUNITY_IDS}})+ORDER+BY+CreatedDate+DESC"
    },
    {
      "method": "GET",
      "referenceId": "tasks",
      "url": "/services/data/v64.0/query/?q=SELECT+Id,+Subject,+ActivityDate,+CreatedDate,+LastModifiedDate,+Owner.Id,+Owner.Name,+WhatId,+Status,+Priority+FROM+Task+WHERE+WhatId+IN+({{OPPORTUNITY_IDS}})+ORDER+BY+ActivityDate+DESC"
    },
    {
      "method": "GET",
      "referenceId": "events",
      "url": "/services/data/v64.0/query/?q=SELECT+Id,+Subject,+ActivityDate,+CreatedDate,+LastModifiedDate,+Owner.Id,+Owner.Name,+WhatId,+Location+FROM+Event+WHERE+WhatId+IN+({{OPPORTUNITY_IDS}})+ORDER+BY+ActivityDate+DESC"
    },
    {
      "method": "GET",
      "referenceId": "stageHistory",
      "url": "/services/data/v64.0/query/?q=SELECT+Id,+OpportunityId,+StageName,+CreatedDate,+Probability,+Amount,+ForecastCategory+FROM+OpportunityHistory+WHERE+OpportunityId+IN+({{OPPORTUNITY_IDS}})+ORDER+BY+CreatedDate+ASC"
    }
  ]
}'

