curl -X GET "https://graph.microsoft.com/v1.0/users/{{userid}}/events?$filter=start/dateTime ge '{{from_date}}' and end/dateTime le '{{to_date}}'" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}" \
     --header "content-type: application/json"
