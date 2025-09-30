---
availability: IDEA
description: A plugin that allows managers to view their reportees' leave history.
domain:
- HR - Employee Records
fidelity: GUIDE
name: Look Up Leave of Absence History
difficulty_level: INTERMEDIATE
time_in_minutes: 30
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+John%27s+leave+history+this+year.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+intent+to+look+up+employee+leave+history+and+extracted+employee+name+%27John%27+and+timeframe+%27this+year%27.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+for+employees+matching+%27John%27+in+SAP+SuccessFactors+within+your+reporting+structure.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Multiple+employees+named+%27John%27+found.+Presenting+options+for+selection.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+employees+named+%5C%22John%5C%22+within+your+direct+and+indirect+reports.+Please+select+the+correct+one+to+view+their+details%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cb%3EJohn+Smith%3C%2Fb%3E+-+Software+Engineer+%28Reports+to+Jane+Doe%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EJohn+Doe%3C%2Fb%3E+-+Senior+Product+Manager+%28Reports+to+you%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EJohn+Vickers%3C%2Fb%3E+-+Marketing+Specialist+%28Reports+to+Bob+Johnson%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%222%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Selected+employee%3A+John+Doe%2C+Senior+Product+Manager.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Verifying+reporting+relationship+for+John+Doe+%28direct+report+confirmed%29.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Retrieving+leave+records+for+John+Doe+for+%27this+year%27+from+SAP+SuccessFactors.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+%3Cb%3EJohn+Doe%27s%3C%2Fb%3E+leave+history+for+this+year+%282024%29%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ESick+Leave%3A%3C%2Fb%3E+3+days+%28Jan+10-12%29%3C%2Fli%3E%3Cli%3E%3Cb%3EPersonal+Day%3A%3C%2Fb%3E+1+day+%28Feb+20%29%3C%2Fli%3E%3Cli%3E%3Cb%3EVacation%3A%3C%2Fb%3E+5+days+%28Apr+15-19%29%3C%2Fli%3E%3Cli%3E%3Cb%3EFamily+Leave+%28FMLA%29%3A%3C%2Fb%3E+10+days+%28Jun+3-14%29+-+%3Ci%3EPending+Approval%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ERemaining+PTO+balance%3A+%3Cb%3E12+days%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+also+show+me+my+team%27s+leave+for+this+quarter%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+intent+to+look+up+team+leave+history+and+extracted+timeframe+%27this+quarter%27.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+all+direct+reports.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Compiling+leave+data+for+all+direct+reports+for+the+current+quarter+%28Q3+2024%29+from+SAP+SuccessFactors.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+your+team%27s+aggregated+leave+for+%3Cb%3EQ3+2024%3C%2Fb%3E+%28July+-+September%29%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ETotal+Vacation+Days+Scheduled%3A%3C%2Fb%3E+25+days%3C%2Fli%3E%3Cli%3E%3Cb%3ETotal+Sick+Days+Taken%3A%3C%2Fb%3E+8+days%3C%2Fli%3E%3Cli%3E%3Cb%3ETotal+Pending+Leave+Requests%3A%3C%2Fb%3E+3+%28FMLA%2C+Personal%2C+Vacation%29%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EBreakdown+by+Employee%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EJohn+Doe%3A%3C%2Fb%3E+10+days+Family+Leave+%28Pending%29%2C+5+days+Vacation%3C%2Fli%3E%3Cli%3E%3Cb%3ESarah+Chen%3A%3C%2Fb%3E+5+days+Vacation%2C+2+days+Sick+Leave%3C%2Fli%3E%3Cli%3E%3Cb%3EDavid+Lee%3A%3C%2Fb%3E+5+days+Vacation%2C+3+days+Sick+Leave%3C%2Fli%3E%3Cli%3E%3Cb%3EMaria+Garcia%3A%3C%2Fb%3E+10+days+Vacation%2C+3+days+Sick+Leave%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22John+Doe+-+Q3+2024+Leave+Summary%22%7D%2C%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Sarah+Chen+-+Q3+2024+Leave+Summary%22%7D%2C%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22David+Lee+-+Q3+2024+Leave+Summary%22%7D%2C%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Maria+Garcia+-+Q3+2024+Leave+Summary%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22We+have+a+resource+crunch+for+our+ongoing+projects.+When+is+John+going+to+be+back%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+intent+to+determine+employee+return+date+and+extracted+employee+name+%27John%27.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Contextualizing+%27John%27+to+refer+to+%27John+Doe%2C+Senior+Product+Manager%27.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Retrieving+active+and+pending+leave+details+for+John+Doe+from+SAP+SuccessFactors+to+determine+the+earliest+return+date.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EBased+on+his+pending+Family+Leave+%28FMLA%29+from+June+3rd+to+June+14th%2C+%3Cb%3EJohn+Doe%3C%2Fb%3E+is+expected+to+be+back+in+the+office+on+%3Cb%3EMonday%2C+June+17th%3C%2Fb%3E.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EPlease+note+that+his+Family+Leave+is+still+%3Ci%3EPending+Approval%3C%2Fi%3E%2C+which+could+affect+his+return+date.%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Employee Records
systems:
- sap-success-factors

---
## Introduction

The “**Look Up Leave of Absence History**” plugin allows managers to easily view their reportees’ leave history directly through the **Moveworks AI Assistant**. It eliminates the need to navigate complex leave management portals, enabling managers to quickly access leave of absence information for compliance and workforce planning without delays.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+John%27s+leave+history+this+year.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+intent+to+look+up+employee+leave+history+and+extracted+employee+name+%27John%27+and+timeframe+%27this+year%27.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+for+employees+matching+%27John%27+in+SAP+SuccessFactors+within+your+reporting+structure.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Multiple+employees+named+%27John%27+found.+Presenting+options+for+selection.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+employees+named+%5C%22John%5C%22+within+your+direct+and+indirect+reports.+Please+select+the+correct+one+to+view+their+details%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cb%3EJohn+Smith%3C%2Fb%3E+-+Software+Engineer+%28Reports+to+Jane+Doe%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EJohn+Doe%3C%2Fb%3E+-+Senior+Product+Manager+%28Reports+to+you%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EJohn+Vickers%3C%2Fb%3E+-+Marketing+Specialist+%28Reports+to+Bob+Johnson%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%222%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Selected+employee%3A+John+Doe%2C+Senior+Product+Manager.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Verifying+reporting+relationship+for+John+Doe+%28direct+report+confirmed%29.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Retrieving+leave+records+for+John+Doe+for+%27this+year%27+from+SAP+SuccessFactors.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+%3Cb%3EJohn+Doe%27s%3C%2Fb%3E+leave+history+for+this+year+%282024%29%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ESick+Leave%3A%3C%2Fb%3E+3+days+%28Jan+10-12%29%3C%2Fli%3E%3Cli%3E%3Cb%3EPersonal+Day%3A%3C%2Fb%3E+1+day+%28Feb+20%29%3C%2Fli%3E%3Cli%3E%3Cb%3EVacation%3A%3C%2Fb%3E+5+days+%28Apr+15-19%29%3C%2Fli%3E%3Cli%3E%3Cb%3EFamily+Leave+%28FMLA%29%3A%3C%2Fb%3E+10+days+%28Jun+3-14%29+-+%3Ci%3EPending+Approval%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ERemaining+PTO+balance%3A+%3Cb%3E12+days%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+also+show+me+my+team%27s+leave+for+this+quarter%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+intent+to+look+up+team+leave+history+and+extracted+timeframe+%27this+quarter%27.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+all+direct+reports.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Compiling+leave+data+for+all+direct+reports+for+the+current+quarter+%28Q3+2024%29+from+SAP+SuccessFactors.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+your+team%27s+aggregated+leave+for+%3Cb%3EQ3+2024%3C%2Fb%3E+%28July+-+September%29%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ETotal+Vacation+Days+Scheduled%3A%3C%2Fb%3E+25+days%3C%2Fli%3E%3Cli%3E%3Cb%3ETotal+Sick+Days+Taken%3A%3C%2Fb%3E+8+days%3C%2Fli%3E%3Cli%3E%3Cb%3ETotal+Pending+Leave+Requests%3A%3C%2Fb%3E+3+%28FMLA%2C+Personal%2C+Vacation%29%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EBreakdown+by+Employee%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EJohn+Doe%3A%3C%2Fb%3E+10+days+Family+Leave+%28Pending%29%2C+5+days+Vacation%3C%2Fli%3E%3Cli%3E%3Cb%3ESarah+Chen%3A%3C%2Fb%3E+5+days+Vacation%2C+2+days+Sick+Leave%3C%2Fli%3E%3Cli%3E%3Cb%3EDavid+Lee%3A%3C%2Fb%3E+5+days+Vacation%2C+3+days+Sick+Leave%3C%2Fli%3E%3Cli%3E%3Cb%3EMaria+Garcia%3A%3C%2Fb%3E+10+days+Vacation%2C+3+days+Sick+Leave%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22John+Doe+-+Q3+2024+Leave+Summary%22%7D%2C%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Sarah+Chen+-+Q3+2024+Leave+Summary%22%7D%2C%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22David+Lee+-+Q3+2024+Leave+Summary%22%7D%2C%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Maria+Garcia+-+Q3+2024+Leave+Summary%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22We+have+a+resource+crunch+for+our+ongoing+projects.+When+is+John+going+to+be+back%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+intent+to+determine+employee+return+date+and+extracted+employee+name+%27John%27.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Contextualizing+%27John%27+to+refer+to+%27John+Doe%2C+Senior+Product+Manager%27.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Retrieving+active+and+pending+leave+details+for+John+Doe+from+SAP+SuccessFactors+to+determine+the+earliest+return+date.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EBased+on+his+pending+Family+Leave+%28FMLA%29+from+June+3rd+to+June+14th%2C+%3Cb%3EJohn+Doe%3C%2Fb%3E+is+expected+to+be+back+in+the+office+on+%3Cb%3EMonday%2C+June+17th%3C%2Fb%3E.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EPlease+note+that+his+Family+Leave+is+still+%3Ci%3EPending+Approval%3C%2Fi%3E%2C+which+could+affect+his+return+date.%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [SAP SuccessFactors Connector](https://marketplace.moveworks.com/connectors/sap-success-factors#how-to-implement) guide for detailed instructions. Once completed, proceed to install the **Look Up Leave of Absence History** plugin and complete the setup efficiently.

For this plugin, ensure the SAP SuccessFactors integration managers have the following permissions:

**Required Scopes:**

- `View` access to the **User** entity
- `View` access to the **EmployeeTime** entity
- `View` access to the **timemanagement** entity

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### API#1:  Get Direct Reports By Email

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/User?%24filter=email%20eq%20%27{{MANAGER_EMAIL}}%27&%24expand=directReports&%24select=userId%2Cemail%2CdisplayName%2CdirectReports%2FuserId%2CdirectReports%2FdisplayName%2CdirectReports%2Femail%2CdirectReports%2Ftitle%2CdirectReports%2Fdepartment%2CdirectReports%2Flocation%2CdirectReports%2FbusinessPhone%2CdirectReports%2Fcity%2CdirectReports%2FhireDate%2CdirectReports%2FemployeeClass%2CdirectReports%2Fstatus' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `MANAGER_EMAIL` (string) – Used to retrieve their team member’s.

### API#2:  Get Employee Absence By User ID

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/EmployeeTime?%24filter=userId%20eq%20%{{USER_ID}}%27%20and%20startDate%20ge%20datetime%27{{START_DATE}}T00%3A00%3A00%27%20and%20startDate%20le%20datetime%27{{END_DATE}}T23%3A59%3A59%27&%24select=startDate%2CendDate%2CapprovalStatus%2CtimeType%2CtimeTypeNav%2CtimeTypeNav%2FabsenceClassNav&%24expand=timeTypeNav%2CtimeTypeNav%2FabsenceClassNav' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `USER_ID` (string) – Used to retrieve particular team member leave history.
- `START_DATE` (string) – Used to specify the **beginning date** of the leave history period.
- `END_DATE`  (string) – Used to specify the **end** **date** of the leave history period.

### API#3: Get Employee PTO Balance By User ID

```bash
curl --location 'https://<YOUR_INSTANCE>/rest/timemanagement/absence/v1/timeAccountBalances?%24at={{DATE}}&userId=%27{{USER_ID}}%27' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `USER_ID` (string) – Used to retrieve particular team member PTO Balance.
- `DATE` (string) - Used to specify the **date** of PTO Balance.