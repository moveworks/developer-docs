---
availability: IDEA
description: A plugin that allows IT administrators to search and view configuration
  profiles in Jamf Pro via the Moveworks AI Assistant. This automation provides quick
  visibility into profile details including payload type, target scope, and deployment
  status, helping admins validate compliance and troubleshoot configuration coverage
  efficiently without navigating the Jamf console.
domain:
- IT
- Access Management
fidelity: IDEA
name: Look Up a Configuration Profile
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+view+configuration+profiles+in+JAMF%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22To+look+up+a+configuration+profile%2C+please+specify+one+or+more+of+the+following+identifiers%3A%5Cn%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%5Cn++%3Cli%3EProfile+Name%3C%2Fli%3E%5Cn++%3Cli%3EProfile+Type+%28e.g.%2C+Wi-Fi%2C+Restrictions%2C+Certificate%2C+VPN%29%3C%2Fli%3E%5Cn++%3Cli%3EProfile+ID%3C%2Fli%3E%5Cn++%3Cli%3EScope+target+%28device%2C+user%2C+or+group+name%29%3C%2Fli%3E%5Cn++%3Cli%3ESite+or+department%3C%2Fli%3E%5Cn++%3Cli%3EProfile+status%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+view+details+for+Wifi+configuration%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Verifying+user+permissions+to+view+configuration+profiles+in+Jamf.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+Jamf+for+configuration+profiles+with+type+%27Wi-Fi%27.%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+multiple+Wi-Fi+configuration+profiles.+Please+select+one+from+the+list+below+to+view+its+details%3A%5Cn%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%5Cn++%3Cli%3E%3Cb%3EName%3A%3C%2Fb%3E+Corporate+Wi-Fi%2C+%3Cb%3EType%3A%3C%2Fb%3E+Wi-Fi%2C+%3Cb%3EID%3A%3C%2Fb%3E+101%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EName%3A%3C%2Fb%3E+Guest+Wi-Fi%2C+%3Cb%3EType%3A%3C%2Fb%3E+Wi-Fi%2C+%3Cb%3EID%3A%3C%2Fb%3E+102%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EName%3A%3C%2Fb%3E+Executive+Wi-Fi%2C+%3Cb%3EType%3A%3C%2Fb%3E+Wi-Fi%2C+%3Cb%3EID%3A%3C%2Fb%3E+103%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27ll+choose+number+2%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+details+for+configuration+profile+ID+102+from+Jamf.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGuest+Wi-Fi%3C%2Fb%3E+configuration+profile%3A%5Cn%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%5Cn++%3Cli%3E%3Cb%3EProfile+Name%3A%3C%2Fb%3E+Guest+Wi-Fi%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EProfile+ID%3A%3C%2Fb%3E+102%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EProfile+Type%3A%3C%2Fb%3E+Wi-Fi%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EPayload+Type%3A%3C%2Fb%3E+com.apple.wifi%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ETarget+Scope%3A%3C%2Fb%3E+All+Devices%2C+All+Users%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDeployment+Status%3A%3C%2Fb%3E+Deployed%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ESite%3A%3C%2Fb%3E+Main+Campus%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDepartment%3A%3C%2Fb%3E+IT+Services%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDescription%3A%3C%2Fb%3E+Provides+guest+access+to+the+internet.%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22Guest+Wi-Fi+%28ID%3A+102%29%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf

---
