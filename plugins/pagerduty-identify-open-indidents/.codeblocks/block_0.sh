curl --location --globoff 'https://api.pagerduty.com/incidents?statuses[]=triggered&statuses[]=acknowledged' \
--header 'Authorization: Token <Your Access Token>'
