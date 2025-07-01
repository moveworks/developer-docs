curl --location --globoff 'https://api.pagerduty.com/incidents?since={{from_date}}&until={{date_until}}&statuses[]=triggered&statuses[]=acknowledged&limit=100' \
--header 'Authorization: Token <Your Access Token>'
