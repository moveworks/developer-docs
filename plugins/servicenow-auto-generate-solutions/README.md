---
availability: VALIDATED
description: A plugin that automatically generates a ticket resolution based on previously
  resolved tickets that are similar.
domain:
- IT
- Productivity
fidelity: VALIDATED
name: Auto-Generate Solutions
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+resolve+a+ticket+but+am+not+sure+how.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+can+help+with+that%21+Please+provide+the+ticket+details.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThe+ticket+is+INC0012345%3A+%27User+unable+to+connect+to+VPN%27%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I%27m+searching+for+similar+resolved+tickets+to+find+a+solution...%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+similar+tickets+with+keywords+%27VPN%27%2C+%27connection%27%2C+%27user%27%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+3+similar+resolved+tickets.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Analyzing+the+solutions+from+the+similar+tickets...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Based+on+similar+resolved+tickets%2C+here%27s+a+potential+solution%3A%22%7D%2C%7B%22richText%22%3A%22Try+these+steps%3A%5Cn1.++Reset+the+VPN+adapter.%5Cn2.++Update+the+VPN+client+to+the+latest+version.%5Cn3.++Verify+the+user%27s+credentials+in+the+VPN+configuration.%5Cn4.++Check+the+firewall+settings+to+ensure+VPN+traffic+is+allowed.%5Cn%5CnThis+solution+was+found+in+ticket+RES-9876%2C+which+had+a+similar+issue.%5Cn%5CnWould+you+like+me+to+apply+this+to+the+ticket%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Apply+Solution%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Show+Similar+Tickets%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Apply+Solution%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Applying+solution...%22%7D%2C%7B%22richText%22%3A%22I%27m+updating+the+ticket+with+the+suggested+resolution+via+the+ServiceNow+API.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESolution+applied+to+ticket+INC0012345.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0012345%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Productivity
systems:
- servicenow
---
