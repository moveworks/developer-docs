---
agent_capabilities:
- Ambient Agent
availability: IDEA
description: 'An ambient agent that monitors the finance system for outstanding items:
  incomplete journal entries, missing reconciliations, or unsubmitted reports. It
  automatically reaches out to the respective leaders with the specific details needed,
  gathers responses, and compiles a ready-to-review checklist for the controller to
  streamline the close process.'
domain:
- Finance - Other
fidelity: IDEA
name: 'Month-End Close Preparation '
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EMonth-End+Close%3A+3+Outstanding+Items%3C%2Fb%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHi+Alex%2C+as+we+approach+the+end-of-month+close+for+October%2C+I%27ve+identified+3+outstanding+items+that+require+attention%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EIncomplete+Journal+Entry%3A%3C%2Fb%3E+Missing+accruals+for+professional+services+%28Owner%3A+Mark+Johnson%29%3C%2Fli%3E%3Cli%3E%3Cb%3EMissing+Reconciliation%3A%3C%2Fb%3E+AMEX+corporate+account+has+not+been+reconciled+%28Owner%3A+Lisa+Ray%29%3C%2Fli%3E%3Cli%3E%3Cb%3EUnsubmitted+Report%3A%3C%2Fb%3E+Departmental+budget+variance+report+is+overdue+%28Owner%3A+David+Chen%29%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EShall+I+reach+out+to+the+owners+to+ensure+these+are+completed+by+EOD%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22August+Month-End+Close%22%2C%22connectorName%22%3A%22oracle-netsuite%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+contact+them%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22No%2C+I%27ll+handle+it%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+will+contact+the+responsible+individuals+for+each+outstanding+item.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Sending+notifications+via+Slack+to+Mark%2C+Lisa%2C+and+David.%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI%27ve+sent+reminders+to+Mark%2C+Lisa%2C+and+David.+I%27ll+update+the+Month-End+Close+checklist+as+they+complete+their+tasks+and+will+notify+you+when+it%27s+ready+for+your+final+review.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22August+Month-End+Close+Checklist+updated%22%2C%22connectorName%22%3A%22oracle-netsuite%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- Finance - Other
systems:
- netsuite
- coupa
- sap-concur

---
