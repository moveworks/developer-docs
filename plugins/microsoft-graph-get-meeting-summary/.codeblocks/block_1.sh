curl -X GET "https://graph.microsoft.com/v1.0/users/{{userid}}/onlineMeetings/?$filter=JoinWebUrl eq '{{weburl}}'" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}" \
     --header "content-type: application/json"
