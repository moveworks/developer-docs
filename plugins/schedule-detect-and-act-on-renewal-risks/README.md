---
agent_capabilities:
- Ambient Agent
availability: IDEA
description: "90 days before renewal, the agent scans all customer signals \u2014\
  \ product usage trends, health scores, ticket volume, NPS sentiment, and exec engagement.\
  \ It generates a renewal risk assessment, highlighting key drivers such as declining\
  \ usage or negative sentiment. The agent drafts a renewal strategy with recommended\
  \ actions and alerts the CSM in Slack. For high-risk accounts, it queues a one-tap\
  \ approval to engage the executive sponsor and logs all actions back to the CRM\
  \ for visibility."
domain:
- Customer Success
fidelity: IDEA
name: Detect and Act on Renewal Risks
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E90+days+before+renewal%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Scanning+customer+signals%22%2C%22status%22%3A%22success%22%2C%22content%22%3A%5B%7B%22apiBlock%22%3A%7B%22title%22%3A%22Gather+product+usage+trends%22%2C%22connectorName%22%3A%22snowflake%22%2C%22code%22%3A%22%2F%2F+API+call+code%22%2C%22language%22%3A%22javascript%22%2C%22caption%22%3A%22%22%2C%22overrideImageUrl%22%3A%22%22%7D%7D%2C%7B%22apiBlock%22%3A%7B%22title%22%3A%22Score+NPS+call+sentiment%22%2C%22connectorName%22%3A%22gong%22%2C%22code%22%3A%22%2F%2F+API+call+code%22%2C%22language%22%3A%22javascript%22%2C%22caption%22%3A%22%22%2C%22overrideImageUrl%22%3A%22%22%7D%7D%2C%7B%22apiBlock%22%3A%7B%22title%22%3A%22Fetch+recent+support+ticket+details%22%2C%22connectorName%22%3A%22zendesk%22%2C%22code%22%3A%22%2F%2F+API+call+code%22%2C%22language%22%3A%22javascript%22%2C%22caption%22%3A%22%22%2C%22overrideImageUrl%22%3A%22%22%7D%7D%2C%7B%22apiBlock%22%3A%7B%22title%22%3A%22Assess+recent+exec+engagement%22%2C%22connectorName%22%3A%22salesforce%22%2C%22code%22%3A%22%2F%2F+API+call+code%22%2C%22language%22%3A%22javascript%22%2C%22caption%22%3A%22%22%2C%22overrideImageUrl%22%3A%22%22%7D%7D%5D%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Generating+risk+renewal+assessment%22%2C%22content%22%3A%5B%5D%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI%27ve+identified+%3Cstrong%3EMegaCorp%3C%2Fstrong%3E+as+a+%3Cstrong%3EHigh+Risk%3C%2Fstrong%3E+renewal+for+Q3+2024+%2890+days+out%29.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDeclining+product+usage%3C%2Fstrong%3E+over+the+last+60+days+%28down+15%25+in+%3Ca+target%3D%5C%22_blank%5C%22+rel%3D%5C%22noopener+noreferrer+nofollow%5C%22+class%3D%5C%22editor-link%5C%22+href%3D%5C%22%23%5C%22%3ESnowflake%3C%2Fa%3E+metrics%29.%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ENegative+NPS+sentiment%3C%2Fstrong%3E+in+recent+surveys+%28%3Ca+target%3D%5C%22_blank%5C%22+rel%3D%5C%22noopener+noreferrer+nofollow%5C%22+class%3D%5C%22editor-link%5C%22+href%3D%5C%22%23%5C%22%3EGong%3C%2Fa%3E%2C+%3Ca+target%3D%5C%22_blank%5C%22+rel%3D%5C%22noopener+noreferrer+nofollow%5C%22+class%3D%5C%22editor-link%5C%22+href%3D%5C%22%23%5C%22%3EZendesk%3C%2Fa%3E%29.%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ELow+executive+engagement%3C%2Fstrong%3E+over+the+last+90+days+%28%3Ca+target%3D%5C%22_blank%5C%22+rel%3D%5C%22noopener+noreferrer+nofollow%5C%22+class%3D%5C%22editor-link%5C%22+href%3D%5C%22%23%5C%22%3ESalesforce%3C%2Fa%3E%29.%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3ERecommended+actions%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3EEngage+Executive+Sponsor+to+proactively+address+concerns.%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EDraft+a+tailored+renewal+strategy+focusing+on+value+realization.%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%3Cp%3EI%27ve+also+alerted+CSM+John+Doe+via+Slack.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Engage+Executive+Sponsor%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Draft+Custom+Strategy%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Acknowledge+%26+Dismiss%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22showFeedbackTray%22%3Atrue%7D%5D%2C%22userConfig%22%3A%7B%22userName%22%3A%22Scheduled+Job%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%2C%22imageUrl%22%3A%22https%3A%2F%2Fcdn-icons-png.flaticon.com%2F512%2F3652%2F3652191.png%22%7D%7D
solution_tags:
- Customer Success
systems:
- salesforce
- snowflake
- zendesk
- gong

---
