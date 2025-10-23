---
availability: IDEA
description: A plugin that allows authorized IT administrators to remotely remove
  a Mobile Device Management (MDM) profile from a Mac computer device using the Moveworks
  AI Assistant.
domain:
- IT
- Access Management
fidelity: IDEA
name: Remove MDM Profile from a Computer
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22remove+MDM+profile+for+a+computer%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Please+provide+the+device+name%2C+user+email%2C+serial+number%2C+or+Jamf+inventory+ID.%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22john.doe%40acme.corp%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E+for+devices+assigned+to+john.doe%40acme.corp...%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+multiple+devices+assigned+to+John+Doe%3A%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3EJohn+Doe%27s+MacBook+Pro+%28Serial%3A+C02A123BCD%29%3C%2Fli%3E%3Cli%3EJohn+Doe%27s+MacBook+Air+%28Serial%3A+C02E456FGH%29%3C%2Fli%3E%3C%2Fol%3EWhich+one+should+I+proceed+with%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+MacBook+Pro+%28Serial%3A+C02A123BCD%29%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+will+proceed+to+remove+the+MDM+profile+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJohn+Doe%27s+MacBook+Pro+%28Serial%3A+C02A123BCD%29%3C%2Fb%3E.+This+will+unmanage+the+device.+Please+confirm+you+want+to+proceed.%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+proceed.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Calling+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E+API+to+remove+MDM+profile+from+John+Doe%27s+MacBook+Pro...%22%7D%5D%7D%2C%7B%22richText%22%3A%22The+MDM+profile+has+been+successfully+removed+from%3A%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22John+Doe%27s+MacBook+Pro+%28Serial%3A+C02A123BCD%29%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EDevice+Name%3C%2Fb%3E%3A+John+Doe%27s+MacBook+Pro%3Cbr+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22+%2F%3E%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESerial+Number%3C%2Fb%3E%3A+C02A123BCD%3Cbr+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22+%2F%3E%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EDevice+ID%3C%2Fb%3E%3A+12345%3Cbr+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22+%2F%3E%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ELast+Check-In+Time%3C%2Fb%3E%3A+2024-07-26+10%3A30+AM%3Cbr+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22+%2F%3E%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EAction+Status%3C%2Fb%3E%3A+Success%22%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf

---
