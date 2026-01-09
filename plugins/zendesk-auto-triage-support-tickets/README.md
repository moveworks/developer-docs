---
agent_capabilities:
- Ambient Agent
availability: IDEA
description: Critical issues often sit idle while support teams work to understand
  whether it's urgent and what exactly is broken. Ambient agents can instantly triage
  new support tickets which involves classifying the issue, checking system status,
  surfacing related reports, and even attempting to reproduce the problem using internal
  tools. This allows customer support teams to jump straight into resolution with
  the full context.
name: Auto-Triage Support Tickets
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EA+new+P0+ticket+has+been+filed+by+%3Cb%3EAcme+Corp%3C%2Fb%3E.+I+am+automatically+triaging+it.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22TKT-12345%3A+Cannot+login+to+portal%22%2C%22connectorName%22%3A%22zendesk%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EIssue+Classified%3A%3C%2Fb%3E+Based+on+keywords+%27login%27%2C+%27portal%27%2C+and+%27error+500%27%2C+I%27ve+classified+this+as+a+%3Ci+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EPlatform+Authentication%3C%2Fi%3E+issue.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESystem+Status+Check%3A%3C%2Fb%3E+Datadog+shows+no+active+incidents+for+the+authentication+service.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ERelated+Issues+Search%3A%3C%2Fb%3E+Found+3+similar+tickets+in+the+last+24+hours.+Linking+related+engineering+ticket+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJIRA-678%3C%2Fb%3E.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EAttempting+to+reproduce%3A%3C%2Fb%3E+Running+internal+login+test+suite...+%3Ci+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESuccess%21%3C%2Fi%3E+The+issue+was+reproduced.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ETriage+complete.+I+was+able+to+reproduce+the+login+failure.+It+seems+to+be+an+isolated+issue+as+no+system-wide+outages+are+detected.+I+recommend+assigning+this+to+the+%3Cb%3EPlatform+Auth+Engineering%3C%2Fb%3E+team+and+confirming+the+P0+escalation.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Assign+%26+Escalate%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Assign+to+me%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Ignore%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%2C%22userConfig%22%3A%7B%22userName%22%3A%22You%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D
solution_tags:
- Ticketing
systems:
- zendesk
---
