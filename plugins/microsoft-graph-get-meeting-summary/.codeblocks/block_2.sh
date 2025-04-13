curl -X GET "https://graph.microsoft.com/v1.0/users/{{userid}}/onlineMeetings/{{meeting_id}}/transcripts" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}" \
     --header "content-type: application/json"
