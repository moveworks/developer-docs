---
availability: IDEA
description: A plugin that allows IT teams to update asset ownership records through
  the Moveworks AI Assistant. It retrieves assets missing owners and updates the ownership
  field based on department or user mapping.
domain:
- IT
fidelity: GUIDE
name: Update Asset Ownership
difficulty_level: INTERMEDIATE
time_in_minutes: 30
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+update+owner+for+an+asset+in+servicenow%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+you+update+an+asset+owner+in+%3Cb%3EServiceNow%3C%2Fb%3E.+How+would+you+like+to+find+the+asset+you+want+to+update%3F%3C%2Fp%3E%3Col%3E%3Cli%3EBy+Asset+Name%3C%2Fli%3E%3Cli%3EBy+Asset+ID%3C%2Fli%3E%3Cli%3EBy+Asset+Tag%3C%2Fli%3E%3Cli%3EBy+viewing+all+unassigned+assets%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Asset+name+-+Macbook+Pro%2C+show+me+the+ones+that+are+orphaned%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Parsing+user+input+for+asset+name+%27Macbook+Pro%27+and+status+%27orphaned%27+%28unassigned%29.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+assets+named+%27Macbook+Pro%27+with+no+assigned+owner.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+unassigned+%3Cb%3EMacbook+Pro%3C%2Fb%3E+assets+in+%3Cb%3EServiceNow%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EMacbook+Pro%3C%2Fb%3E+%28ID%3A+MBPR001%2C+Tag%3A+A123%29+-+%3Ci%3ECurrently+unassigned%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EMacbook+Pro%3C%2Fb%3E+%28ID%3A+MBPR002%2C+Tag%3A+A124%29+-+%3Ci%3ECurrently+unassigned%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EWhich+one+would+you+like+to+update%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+first+one%2C+MBPR001%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+you%27ve+selected+%3Cb%3EMacbook+Pro%3C%2Fb%3E+%28ID%3A+MBPR001%29.+Now%2C+please+tell+me+the+name+or+email+of+the+user+you+want+to+assign+it+to.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22assign+to+John%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Extracted+new+owner+%27John%27.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+user+directory+for+individuals+named+%27John%27.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+users+named+%3Cstrong%3EJohn%3C%2Fstrong%3E.+Which+one+is+the+correct+owner%3F%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+%28johndoe%40example.com%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EJohn+Smith%3C%2Fstrong%3E+%28johns%40example.com%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Selected+%27John+Doe%27+as+the+new+owner.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27m+ready+to+update+the+asset+ownership+in+%3Cb%3EServiceNow%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAsset%3C%2Fb%3E%3A+Macbook+Pro+%28ID%3A+MBPR001%2C+Tag%3A+A123%29%3C%2Fli%3E%3Cli%3E%3Cb%3ENew+Owner%3C%2Fb%3E%3A+John+Doe+%28johndoe%40example.com%29%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+right%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22yes%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Updating+asset+ownership+for+%27Macbook+Pro+%28ID%3A+MBPR001%29%27+to+%27John+Doe%27+in+%3Cb%3EServiceNow%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EGreat%21+The+ownership+for+%3Cb%3EMacbook+Pro%3C%2Fb%3E+%28ID%3A+MBPR001%29+has+been+successfully+updated+in+%3Cb%3EServiceNow%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Macbook+Pro+%28MBPR001%29%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow

---
## **Introduction**

The “**Update Asset Ownership**” plugin empowers IT teams to quickly manage and correct asset ownership records using the **Moveworks AI Assistant**. It automatically detects assets without assigned owners and helps update them based on user or department information, improving accountability and ensuring accurate asset data across the organization.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+update+owner+for+an+asset+in+servicenow%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+you+update+an+asset+owner+in+%3Cb%3EServiceNow%3C%2Fb%3E.+How+would+you+like+to+find+the+asset+you+want+to+update%3F%3C%2Fp%3E%3Col%3E%3Cli%3EBy+Asset+Name%3C%2Fli%3E%3Cli%3EBy+Asset+ID%3C%2Fli%3E%3Cli%3EBy+Asset+Tag%3C%2Fli%3E%3Cli%3EBy+viewing+all+unassigned+assets%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Asset+name+-+Macbook+Pro%2C+show+me+the+ones+that+are+orphaned%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Parsing+user+input+for+asset+name+%27Macbook+Pro%27+and+status+%27orphaned%27+%28unassigned%29.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+assets+named+%27Macbook+Pro%27+with+no+assigned+owner.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+unassigned+%3Cb%3EMacbook+Pro%3C%2Fb%3E+assets+in+%3Cb%3EServiceNow%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EMacbook+Pro%3C%2Fb%3E+%28ID%3A+MBPR001%2C+Tag%3A+A123%29+-+%3Ci%3ECurrently+unassigned%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EMacbook+Pro%3C%2Fb%3E+%28ID%3A+MBPR002%2C+Tag%3A+A124%29+-+%3Ci%3ECurrently+unassigned%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EWhich+one+would+you+like+to+update%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+first+one%2C+MBPR001%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+you%27ve+selected+%3Cb%3EMacbook+Pro%3C%2Fb%3E+%28ID%3A+MBPR001%29.+Now%2C+please+tell+me+the+name+or+email+of+the+user+you+want+to+assign+it+to.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22assign+to+John%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Extracted+new+owner+%27John%27.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+user+directory+for+individuals+named+%27John%27.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+users+named+%3Cstrong%3EJohn%3C%2Fstrong%3E.+Which+one+is+the+correct+owner%3F%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+%28johndoe%40example.com%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EJohn+Smith%3C%2Fstrong%3E+%28johns%40example.com%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Selected+%27John+Doe%27+as+the+new+owner.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27m+ready+to+update+the+asset+ownership+in+%3Cb%3EServiceNow%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAsset%3C%2Fb%3E%3A+Macbook+Pro+%28ID%3A+MBPR001%2C+Tag%3A+A123%29%3C%2Fli%3E%3Cli%3E%3Cb%3ENew+Owner%3C%2Fb%3E%3A+John+Doe+%28johndoe%40example.com%29%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+right%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22yes%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Updating+asset+ownership+for+%27Macbook+Pro+%28ID%3A+MBPR001%29%27+to+%27John+Doe%27+in+%3Cb%3EServiceNow%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EGreat%21+The+ownership+for+%3Cb%3EMacbook+Pro%3C%2Fb%3E+%28ID%3A+MBPR001%29+has+been+successfully+updated+in+%3Cb%3EServiceNow%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Macbook+Pro+%28MBPR001%29%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Introduction**

The “**Update Asset Ownership**” plugin empowers IT teams to quickly manage and correct asset ownership records using the **Moveworks AI Assistant**. It automatically detects assets without assigned owners and helps update them based on user or department information, improving accountability and ensuring accurate asset data across the organization.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+update+owner+for+an+asset+in+servicenow%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+you+update+an+asset+owner+in+%3Cb%3EServiceNow%3C%2Fb%3E.+How+would+you+like+to+find+the+asset+you+want+to+update%3F%3C%2Fp%3E%3Col%3E%3Cli%3EBy+Asset+Name%3C%2Fli%3E%3Cli%3EBy+Asset+ID%3C%2Fli%3E%3Cli%3EBy+Asset+Tag%3C%2Fli%3E%3Cli%3EBy+viewing+all+unassigned+assets%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Asset+name+-+Macbook+Pro%2C+show+me+the+ones+that+are+orphaned%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Parsing+user+input+for+asset+name+%27Macbook+Pro%27+and+status+%27orphaned%27+%28unassigned%29.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+assets+named+%27Macbook+Pro%27+with+no+assigned+owner.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+unassigned+%3Cb%3EMacbook+Pro%3C%2Fb%3E+assets+in+%3Cb%3EServiceNow%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EMacbook+Pro%3C%2Fb%3E+%28ID%3A+MBPR001%2C+Tag%3A+A123%29+-+%3Ci%3ECurrently+unassigned%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EMacbook+Pro%3C%2Fb%3E+%28ID%3A+MBPR002%2C+Tag%3A+A124%29+-+%3Ci%3ECurrently+unassigned%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EWhich+one+would+you+like+to+update%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+first+one%2C+MBPR001%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+you%27ve+selected+%3Cb%3EMacbook+Pro%3C%2Fb%3E+%28ID%3A+MBPR001%29.+Now%2C+please+tell+me+the+name+or+email+of+the+user+you+want+to+assign+it+to.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22assign+to+John%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Extracted+new+owner+%27John%27.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+user+directory+for+individuals+named+%27John%27.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+users+named+%3Cstrong%3EJohn%3C%2Fstrong%3E.+Which+one+is+the+correct+owner%3F%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+%28johndoe%40example.com%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EJohn+Smith%3C%2Fstrong%3E+%28johns%40example.com%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Selected+%27John+Doe%27+as+the+new+owner.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27m+ready+to+update+the+asset+ownership+in+%3Cb%3EServiceNow%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAsset%3C%2Fb%3E%3A+Macbook+Pro+%28ID%3A+MBPR001%2C+Tag%3A+A123%29%3C%2Fli%3E%3Cli%3E%3Cb%3ENew+Owner%3C%2Fb%3E%3A+John+Doe+%28johndoe%40example.com%29%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+right%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22yes%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Updating+asset+ownership+for+%27Macbook+Pro+%28ID%3A+MBPR001%29%27+to+%27John+Doe%27+in+%3Cb%3EServiceNow%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EGreat%21+The+ownership+for+%3Cb%3EMacbook+Pro%3C%2Fb%3E+%28ID%3A+MBPR001%29+has+been+successfully+updated+in+%3Cb%3EServiceNow%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Macbook+Pro+%28MBPR001%29%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://marketplace.moveworks.com/connectors/servicenow#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- **Table Access**: `Read` access to the `sys_user` and `alm_asset` tables. `Write` access to the `alm_asset` table to update asset ownership.
- **Field Access:** Sufficient access to retrieve user details from ServiceNow, and **read/write access to the `owned_by` field on the `alm_asset` table**

**Your Instance Configuration:**

All ServiceNow API endpoints in this plugin use `<YOUR_INSTANCE>` as a placeholder. After installation, replace `<YOUR_INSTANCE>` in the action definitions with your actual ServiceNow instance name.

To find your instance name:

- Log in to your ServiceNow account.
- Check the URL in your browser — the instance name appears before `.service-now.com`, e.g.:
    
    `https://**your_instance**.service-now.com/...`
    

Make sure to update this across all actions that reference the ServiceNow API.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix:-**

### **API #1 : Get Unassigned Assets**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/alm_asset?sysparm_query={{FILTER_QUERY}}&sysparm_fields=sys_id%2Cname%2Casset_tag%2Cdisplay_name%2Cassigned_to.name%2Cdepartment.name%2Cowned_by%2Casset_tag%2Cmodel_category.name%2Ccompany.name%2Cstate%2Ccost&sysparm_limit=100' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `FILTER_QUERY` **(string)** – Filter assets by specific property values.
    - You can filter by **Asset name**, **Asset tag**, or **List all unassigned assets**.
        - Example filters:
            - `owned_byISEMPTY` → Returns all unassigned assets.
            - `display_nameLIKE{{asset_name}}^owned_byISEMPTY` → Returns unassigned assets by asset name.
            - `asset_tag={{asset_tag}}^owned_byISEMPTY` → Returns unassigned assets by asset tag
- `sysparm_fields` (string) – Fields to include in the response.

### **API #2 : Get User Sys ID By Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=email={{EMAIL_ADDRESS}}&sysparm_fields=sys_id%2Cname%2Cemail%2Cdepartment.name' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `EMAIL_ADDRESS` → Returns user details by email.

**Note:** Leveraging built-in `User` data type allows the Moveworks reasoning engine to reliably identify users from partial name inputs. This ensures we capture the correct email and automatically retrieve the corresponding ServiceNow Sys ID in the background.

### **API #3 : Update Asset Ownership**

```bash
curl --location --request PATCH 'https://<YOUR_INSTANCE>/api/now/table/alm_asset/{{ASSET_SYS_ID}}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "owned_by": "{{USER_SYS_ID}}"
}'
```

**Query Parameters:**

- `ASSET_SYS_ID` (string) – The unique ID of an asset in ServiceNow.

Body Parameters:

- `USER_SYS_ID`  (string) - The unique ID of a user in ServiceNow.
