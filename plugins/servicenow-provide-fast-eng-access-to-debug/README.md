---
agent_functionality:
- Ambient Agent
availability: IDEA
custom_tags:
- Ambient Agent
description: "When a severe incident is created in ServiceNow, this agent identifies\
  \ impacted systems, notifies the on-call engineer, requests temporary access from\
  \ their director, and grants access automatically \u2014 enabling a faster time\
  \ to resolution."
domain:
- Engineering
fidelity: IDEA
name: Provide Fast Eng Access to Debug
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EA+new+P0+incident+has+been+created+in+%3Cb%3EServiceNow%3C%2Fb%3E.+I%27m+initiating+the+rapid+response+protocol.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC-98765%3A+Billing+service+unavailable%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EImpacted+System+Identified%3A%3C%2Fb%3E+Based+on+the+incident+description%2C+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ECustomer+Billing+Service%3C%2Fb%3E+is+affected.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOn-call+Engineer+Identified%3A%3C%2Fb%3E+The+on-call+for+this+service+is+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EAmelia+Chen%3C%2Fb%3E.+She+has+been+notified+via+Slack+and+PagerDuty.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EAction+Required%3A%3C%2Fb%3E+To+debug+this+issue%2C+Amelia+requires+temporary+elevated+access+to+the+production+environment+for+4+hours.+Requesting+approval+from+her+director%2C+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EDavid+Lee%3C%2Fb%3E.%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EDavid%2C+please+approve+this+temporary+access+request+for+Amelia+Chen.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Approve+for+4+hours%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Deny%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EApproval+Received%3A%3C%2Fb%3E+David+Lee+has+approved+the+request.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGranting+Access%3A%3C%2Fb%3E+Automatically+provisioning+temporary+elevated+access+for+Amelia+Chen+via+Okta.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EAccess+has+been+granted.+Amelia+has+been+notified+and+can+now+access+the+production+environment+for+the+%3Cb%3ECustomer+Billing+Service%3C%2Fb%3E.+The+access+will+automatically+expire+in+4+hours.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%2C%22userConfig%22%3A%7B%22userName%22%3A%22You%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D
solution_tags:
- Engineering
systems:
- servicenow
- okta

---
