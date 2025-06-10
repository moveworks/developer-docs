curl -X GET "https://graph.microsoft.com/v1.0/users/{{userid}}/onlineMeetings/{{meeting_id}}/attendanceReports" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}"
