curl -X GET "https://api.zoom.us/v2/meetings/{{meeting_id}}" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}" \
     --header "content-type: application/json"
