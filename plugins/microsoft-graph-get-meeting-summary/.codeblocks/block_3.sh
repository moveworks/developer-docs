curl -X GET "https://graph.microsoft.com/v1.0/users/{{user_id}}/onlineMeetings/{{meeting_id}}/transcripts/{{transcript_id}}/content" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}" \
     --header "content-type: application/json"
