curl --request POST \
  --url 'https://graph.microsoft.com/v1.0/me/findMeetingTimes' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --header 'Prefer: outlook.timezone="{{timezone}}"' \
  --data '{
    "attendees": [
      { "type": "required", "emailAddress": { "address": "{{required_attendee_email}}" } },
      { "type": "optional", "emailAddress": { "address": "{{optional_attendee_email}}" } }
    ],
    "timeConstraint": {
      "activityDomain": "work",
      "timeSlots": [
        {
          "start": { "dateTime": "{{start_datetime}}", "timeZone": "{{timezone}}" },
          "end": { "dateTime": "{{end_datetime}}", "timeZone": "{{timezone}}" }
        }
      ]
    },
    "meetingDuration": "PT{{duration_in_minutes}}M",
    "isOrganizerOptional": false,
    "locationConstraint": { "isRequired": false, "suggestLocation": true },
    "returnSuggestionReasons": true
  }'
