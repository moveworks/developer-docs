curl -X GET "https://api.zoom.us/v2/past_meetings/{{meeting_id}}/qa" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}" \
     --header "content-type: application/json"
