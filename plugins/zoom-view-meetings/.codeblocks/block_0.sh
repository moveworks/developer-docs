curl -X GET "https://api.zoom.us/v2/report/users/{{email}}/meetings?from={{from_date}}&to={{to_date}}&type=pastJoined&page_size=300" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}" \
     --header "content-type: application/json"
