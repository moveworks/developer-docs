---
agent_capabilities:
- Ambient Agent
availability: IDEA
description: When Workday flags an employee with an open enrollment event still incomplete,
  the agent notifies them in the Assistant with a simple prompt to finish their enrollment.
  The employee can take action directly through the Assistant (e.g., confirm plan
  choice, add dependents, or review coverage). Once confirmed, the agent updates Workday
  with the completed enrollment record and marks the task closed. This reduces HR
  chasing and ensures compliance before the deadline.
name: Nudge Open Enrollment Completion
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOpen+enrollment+events+still+incomplete%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHi+Jane.+A+reminder+that+your+Open+Enrollment+period+for+2025+ends+on+November+15th.+Here+are+your+current+elections.+Would+you+like+to+re-enroll+with+the+same+coverage%3F%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EMedical%3A%3C%2Fb%3E+Kaiser+Permanente+Gold%3C%2Fli%3E%3Cli%3E%3Cb%3EDental%3A%3C%2Fb%3E+Guardian+PPO%3C%2Fli%3E%3Cli%3E%3Cb%3EVision%3A%3C%2Fb%3E+VSP+Choice%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Re-enroll+with+same+plan%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Make+Changes%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGreat.+I+will+submit+your+elections+for+2025.+Please+review+and+confirm%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EMedical%3A%3C%2Fb%3E+Kaiser+Permanente+Gold%3C%2Fli%3E%3Cli%3E%3Cb%3EDental%3A%3C%2Fb%3E+Guardian+PPO%3C%2Fli%3E%3Cli%3E%3Cb%3EVision%3A%3C%2Fb%3E+VSP+Choice%3C%2Fli%3E%3Cli%3E%3Cb%3EDependents%3A%3C%2Fb%3E+Michael+Doe+%28Spouse%29%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EDoes+everything+look+correct%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Submit+to+Workday%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Selections%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Submitting+benefits+elections+to+Workday...%22%7D%5D%7D%5D%7D%5D%2C%22userConfig%22%3A%7B%22userName%22%3A%22Workday%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%2C%22imageUrl%22%3A%22https%3A%2F%2Fwww.vhv.rs%2Fdpng%2Fd%2F129-1291699_workday-staff-writers-workday-logo-hd-png-download.png%22%7D%7D
solution_tags:
- HR - Benefits
systems:
- workday
---
