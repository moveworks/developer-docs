curl -X POST "https://us-35031.api.gong.io/v2/calls/extensive" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}" \
     --header "content-type: application/json" \
     --data '{
       "cursor": "{{cursor}}",
       "contentSelector": {
         "context": "None",
         "exposedFields": {
           "collaboration": {
             "publicComments": false
           },
           "content": {
             "pointsOfInterest": false,
             "structure": false,
             "topics": false,
             "trackers": false
           },
           "interaction": {
             "personInteractionStats": false,
             "questions": false,
             "speakers": false,
             "video": false
           },
           "media": false,
           "parties": true
         }
       },
       "filter": {
         "fromDateTime": "{{from_date}}",
         "toDateTime": "{{to_date}}"
       }
     }'
