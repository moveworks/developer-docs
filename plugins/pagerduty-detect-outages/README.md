---
agent_functionality:
- Ambient Agent
availability: IDEA
custom_tags:
- Ambient Agent
description: This agent continuously monitors for incident signals in PagerDuty and
  alerts IT teams when a potential outage is detected.
domain:
- Engineering
fidelity: IDEA
name: Detect Outages
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn++%5C%22service%5C%22%3A+%5C%22auth-api%5C%22%2C%5Cn++%5C%22status%5C%22%3A+%5C%22triggered%5C%22%2C%5Cn++%5C%22incident_key%5C%22%3A+%5C%22d9a9f8f8-b5e0-4da4-a9c1-1e9480a48a3c%5C%22%2C%5Cn++%5C%22event_type%5C%22%3A+%5C%22trigger%5C%22%2C%5Cn++%5C%22description%5C%22%3A+%5C%22High+rate+of+5xx+errors+detected%5C%22%2C%5Cn++%5C%22client%5C%22%3A+%5C%22Datadog%5C%22%2C%5Cn++%5C%22client_url%5C%22%3A+%5C%22https%3A%2F%2Fdatadog.link%2Fto%2Fevent%2F12345%5C%22%2C%5Cn++%5C%22timestamp%5C%22%3A+%5C%222024-05-21T17%3A45%3A00Z%5C%22%5Cn%7D%22%2C%22caption%22%3A%22PagerDuty+Alert%22%2C%22connectorName%22%3A%22pagerduty%22%2C%22title%22%3A%22New+Incident+Triggered%22%7D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHi+team%2C+I%27ve+detected+a+potential+outage+signal+for+the+%3Cb%3Eauth-api%3C%2Fb%3E+service.+There%27s+a+high+rate+of+5xx+errors+starting+at+10%3A45+AM+PT.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThis+might+be+a+P1+incident.+Should+I+create+a+high-priority+incident+ticket+in+ServiceNow%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Create+Incident+Ticket%22%7D%2C%7B%22buttonText%22%3A%22Acknowledge+Alert%22%7D%2C%7B%22buttonText%22%3A%22View+in+PagerDuty%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Connecting+to+ServiceNow%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Creating+P1+incident+ticket+for+%60auth-api%60%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Assigning+to+on-call+SRE+team%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Connected+to+ServiceNow%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Created+P1+incident+ticket+for+%60auth-api%60%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Assigned+to+on-call+SRE+team%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI%27ve+created+the+incident+ticket+and+assigned+it+to+the+on-call+SRE+team.+I%27ll+continue+to+monitor+the+service+and+post+updates+here.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0012345%3A+High+5xx+error+rate+on+auth-api%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%2C%22userConfig%22%3A%7B%22userName%22%3A%22You%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D
solution_tags:
- Engineering
systems:
- pagerduty

---
