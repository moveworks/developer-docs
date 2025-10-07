---
agent_capabilities:
- Ambient Agent
availability: IDEA
description: When an employee submits a PTO request in Workday, the agent should notify
  the manager, allow them to take action through the agent, and then update the Workday
  system. The agent should also update the requestor with the decision on the request.
domain:
- HR - Time & Absence
fidelity: IDEA
name: Submit / Approve a PTO Request
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EEmployee+submits+PTO+request%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHi+Jane%2C+you+have+a+new+time+off+request+from+Alex+Smith+to+review.%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EEmployee%3C%2Fb%3E%3A+Alex+Smith%3C%2Fli%3E%3Cli%3E%3Cb%3EDates%3C%2Fb%3E%3A+Dec+23%2C+2024+-+Jan+2%2C+2025%3C%2Fli%3E%3Cli%3E%3Cb%3EType%3C%2Fb%3E%3A+Vacation%3C%2Fli%3E%3Cli%3E%3Cb%3ERemaining+Balance%3C%2Fb%3E%3A+80+hours%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWould+you+like+to+approve+this+request%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Approve%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Deny%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Approving+request+in+Workday...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Notifying+Alex+Smith+of+the+approval...%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EDone.+The+time+off+request+for+Alex+Smith+has+been+approved.+I+have+notified+them+of+your+decision.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22Time+Off+Request+-+Alex+Smith+%28Approved%29%22%7D%5D%7D%5D%7D%5D%2C%22userConfig%22%3A%7B%22userName%22%3A%22Workday%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%2C%22imageUrl%22%3A%22https%3A%2F%2Fwww.vhv.rs%2Fdpng%2Fd%2F129-1291699_workday-staff-writers-workday-logo-hd-png-download.png%22%7D%7D
solution_tags:
- HR - Time & Absence
systems:
- workday

---
