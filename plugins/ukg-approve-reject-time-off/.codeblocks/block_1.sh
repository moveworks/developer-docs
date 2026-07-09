curl --request POST \
  --url https://<YOUR_UKG_HOST>/api/v1/scheduling/timeoff/apply_update \
  --header 'Authorization: <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json'
  --data '{
    "changeState": {
        "do": {
            "toStatus": {
                "name": "<NEW_STATUS>"
            },
            "commentNotes": [
                {
                    "comment": {
                        "active": true,
                        "name": "Request Comment"
                    },
                    "notes": [
                        {
                            "text": "<COMMENT_TEXT>",
                            "dataSourceDisplayName": "<COMMENTER_USERNAME>"
                        }
                    ]
                }
            ]
        },
        "where": {
            "timeOffRequestId": "<PTO_ID>"
        }
    }
}'
