curl -X GET "https://graph.microsoft.com/v1.0/users/{{userid}}/onlineMeetings/{{meeting_id}}/attendanceReports/{{report_id}}?$expand=attendanceRecords" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}" \
     --header "content-type: application/json""
