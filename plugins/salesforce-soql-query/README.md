---
agent_capabilities:
- Structured Data Analyzer
availability: IDEA
name: Salesforce Record Filtering
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What%E2%80%99s+the+total+ARR+of+all+accounts+assigned+to+Jake%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Resolving+%E2%80%9CJake%E2%80%9D%3Cbr%3E%E2%9C%85+Found+%E2%80%9CJake+Schnur%E2%80%9D+%28reports+to+Brian%29%3Cbr%3E%E2%9C%85+Generating+SOQL%3Cbr%3E%E2%9C%85+SELECT+ARR%2C+Name+from+Account+where+Owner.Email+%3D+%27jake.schnur%40moveworks.ai%27%3Cbr%3E%E2%9C%85+Summarizing+8+accounts%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+total+ARR+is+%24617%2C203.19+%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ESummary%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EResult%3C%2Fb%3E%3A+%24617%2C203.19%3Cbr%3E%3Cb%3ECalculation+Code%3C%2Fb%3E%3A+sum%28account%5B%27ARR%27%5D+for+account+in+accounts%29%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EACME+Corp%3Cbr%3E%3C%2Fb%3E%3Cbr%3E%3Cb%3EARR%3C%2Fb%3E%3A+%24101%2C393.99%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%2B+7+more+records%3C%2Fb%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---
