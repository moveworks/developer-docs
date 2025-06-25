curl -X GET "https://graph.microsoft.com/v1.0/users/{{email}}" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}" \
     --header "content-type: application/json"
