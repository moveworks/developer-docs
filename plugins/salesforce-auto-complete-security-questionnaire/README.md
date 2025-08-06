---
agent_functionality:
- Ambient Agent
availability: IDEA
custom_tags:
- Ambient Agent
description: When a new RFP or security questionnaire is uploaded to your CRM this
  agent retrieves your latest SOC2, policies, and security answers and fills out inbound
  security questionnaires automatically. It then pings a security expert for quick
  review and turnaround time back to the prospect.
domain:
- Sales
fidelity: IDEA
name: Auto-Complete Security Questionnaire
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYou+received+a+new+security+questionnaire+for+the+Globex+Corp+RFP.%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22Attached%3A+%3Ccode+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGlobex_Security_Questionnaire.xlsx%3C%2Fcode%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+will+start+drafting+a+response+using+our+existing+security+documentation+to+fill+out+what+I+can.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Parsing+Globex+Corp+Security+Questionnaire%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Retrieving+latest+SOC2+Type+II+report%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Finding+answers+from+security+knowledge+base%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Parsed+Globex+Corp+Security+Questionnaire%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Retrieved+latest+SOC2+Type+II+report%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Answered+23+of+34+questions+automatically%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+completed+a+first+pass+and+answered+23+questions.+I%27ve+attached+our+SOC2+report+and+other+relevant+policies.%3C%2Fp%3E%3Cp%3EThe+remaining+11+questions+require+manual+review.%3C%2Fp%3E%3Cp%3EAlex%2C+can+you+please+review+the+document+and+address+the+flagged+questions%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Completed_Questionnaire_Globex.xlsx%22%2C%22connectorName%22%3A%22onedrive%22%7D%2C%7B%22citationTitle%22%3A%22Globex+Corp+RFP%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Looks+great.+I%27ve+answered+the+last+few+questions.+This+is+approved+to+send+to+the+prospect.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Excellent.+I%27ve+updated+the+opportunity+in+Salesforce+with+the+completed+questionnaire+and+notified+the+account+executive.%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn++%5C%22activity_type%5C%22%3A+%5C%22attachment%5C%22%2C%5Cn++%5C%22status%5C%22%3A+%5C%22completed%5C%22%2C%5Cn++%5C%22notes%5C%22%3A+%5C%22Attached+completed+security+questionnaire.%5C%22%5Cn%7D%22%2C%22caption%22%3A%22POST+%2Fopportunities%2F0068c00001GuFUFAA3%2Factivities%22%2C%22connectorName%22%3A%22salesforce%22%2C%22title%22%3A%22Update+Opportunity%22%7D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%2C%22userConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D
solution_tags:
- Sales
systems:
- salesforce
- box

---
