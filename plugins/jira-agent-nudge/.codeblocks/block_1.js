{
"message": "Hope you had a great weekend.<br>Below is a list of open tickets that haven't received an update in a week or longer. Please prioritize updating these tickets, especially if they are customer facing.<br><br>{{#lookupIssues}}<br><ul><li>Issue Key: <a href=\"{{url}}/\">{{key}}</a><br></li><li>Summary: {{Summary}}</li><br><li>Assignee: {{assignee.emailAddress}}</li></ul><br>{{/}}",
"recipients": [
"{{assignee.emailAddress}}"
]
}
