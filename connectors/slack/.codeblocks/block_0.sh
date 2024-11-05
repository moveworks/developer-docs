curl -X POST 'https://slack.com/api/conversations.create' \
--header 'Authorization: Bearer {{xoxb_your_bot_access_token}}' \
--data-urlencode 'name=test-channel'
