curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/timeTracking/v4/<TENANT>/timeClockEvents?worker={{WORKER_ID}}&fromDate={{START_DATE}}&toDate={{END_DATE}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
