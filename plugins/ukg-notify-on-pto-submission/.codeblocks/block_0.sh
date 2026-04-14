# Start of the polling window (1 hour before current time)
start_date: "($TIME() - 3600).$FORMAT_TIME('%Y-%m-%dT%H:%M:%S')"

# End of the polling window (current time)
end_date: "$TIME().$FORMAT_TIME('%Y-%m-%dT%H:%M:%S')"

# Number of pages to fetch users from (200 users per page)
max_pages: "200"
