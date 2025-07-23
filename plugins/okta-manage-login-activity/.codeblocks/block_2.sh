curl --location 'https://<YOUR_INSTANCE>.okta.com/api/v1/logs?filter=eventType%20eq%20%22user.session.start%22%20and%20outcome.result%20eq%20%22SUCCESS%22%20and%20actor.id%20eq%20%22<user_id>%22%20and%20debugContext.debugData.risk%20co%20%22level%3DMEDIUM%22&sortOrder=DESCENDING&limit=1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
