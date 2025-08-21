curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/composite/batch' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "batchRequests": [
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,Subject,ActivityDate,Status,Description,CallType,CallDurationInSeconds,Priority,TaskSubtype,Owner.Name,Who.Name,WhatId,What.Name+FROM+Task+WHERE+WhatId='\''{{ACCOUNT_ID}}'\''+AND+ActivityDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+ActivityDate+DESC"
    },
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,Subject,ActivityDate,DurationInMinutes,Description,Owner.Name,Who.Name,WhatId,What.Name+FROM+Event+WHERE+WhatId='\''{{ACCOUNT_ID}}'\''+AND+ActivityDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+ActivityDate+DESC"
    }
  ]
}'

