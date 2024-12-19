curl --request GET \
 --url 'https://your-domain.atlassian.net/rest/api/3/search/jql?fields=summary%2Cassignee%2CemailAddress%2Cstatus&jql=project%3D{{PROJECT_KEY}}%20AND%20issuetype%3DEpic%20AND%20assignee%20IS%20NOT%20EMPTY%20AND%20Status%20!%3D%20%22done%22?'\
--user 'email@example.com:<api_token>' \
--header 'Accept: application/json'
