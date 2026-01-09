---
availability: INSTALLABLE
description: A plugin that enables managers to instantly access historical performance
  ratings in their purview.
installation_asset_uuid: 3404c2f7-78ec-4ae4-b1df-308100d2f039
name: Look Up Past Performance Ratings
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+past+performance+ratings+for+Chris%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+wants+to+see+performance+ratings+for+%27Chris%27.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+direct+reports+named+%27Chris%27+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESAP+SuccessFactors%3C%2Fb%3E.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Found+multiple+matches.+Asking+user+for+clarification.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+people+named+Chris+in+your+reporting+line.+Which+one+did+you+mean%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Chris+Jones%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGreat.+Do+you+want+to+see+all+past+ratings+for+Chris+Jones%2C+or+for+a+specific+period%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Last+3+Cycles%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+selected+%27Chris+Jones%27.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+requested+ratings+for+the+%27Last+3+Cycles%27.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Fetching+performance+ratings+for+Chris+Jones+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESAP+SuccessFactors%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+last+three+performance+ratings+for+Chris+Jones%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3E2023+H2%3A%3C%2Fb%3E+4.5+-+Exceeds+Expectations%3C%2Fli%3E%3Cli%3E%3Cb%3E2023+H1%3A%3C%2Fb%3E+4.0+-+Meets+Expectations%3C%2Fli%3E%3Cli%3E%3Cb%3E2022+H2%3A%3C%2Fb%3E+4.2+-+Meets+Expectations%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Chris+Jones%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Performance Management
- Manager
systems:
- sap-success-factors
---

## Introduction

The “**Look Up Past Performance Ratings**” plugin enables employees and managers to instantly access historical performance ratings directly through the **Moveworks AI** Assistant. It eliminates the need to navigate multiple HR portal pages, allowing users to quickly view their own or their team’s past review ratings and trends. This automation improves visibility into performance history and simplifies preparation for reviews and assessments without delays.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+past+performance+ratings+for+Chris%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+wants+to+see+performance+ratings+for+%27Chris%27.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+direct+reports+named+%27Chris%27+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESAP+SuccessFactors%3C%2Fb%3E.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Found+multiple+matches.+Asking+user+for+clarification.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+people+named+Chris+in+your+reporting+line.+Which+one+did+you+mean%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Chris+Jones%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGreat.+Do+you+want+to+see+all+past+ratings+for+Chris+Jones%2C+or+for+a+specific+period%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Last+3+Cycles%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+selected+%27Chris+Jones%27.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+requested+ratings+for+the+%27Last+3+Cycles%27.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Fetching+performance+ratings+for+Chris+Jones+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESAP+SuccessFactors%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+last+three+performance+ratings+for+Chris+Jones%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3E2023+H2%3A%3C%2Fb%3E+4.5+-+Exceeds+Expectations%3C%2Fli%3E%3Cli%3E%3Cb%3E2023+H1%3A%3C%2Fb%3E+4.0+-+Meets+Expectations%3C%2Fli%3E%3Cli%3E%3Cb%3E2022+H2%3A%3C%2Fb%3E+4.2+-+Meets+Expectations%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Chris+Jones%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [SAP SuccessFactors Connector](https://marketplace.moveworks.com/connectors/sap-success-factors#how-to-implement) guide for detailed instructions. Once completed, proceed to install the **Look Up Past Performance Ratings** plugin and complete the setup efficiently.

For this plugin, ensure the SAP SuccessFactors integration user have the following permissions:

**Required Scopes:**

- `View` access to the **User** entity
- `View` access to the **FormFolder** entity

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### API#1:  Get User Details By Email

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/User?%24filter=email%20eq%20%27{{USER_EMAIL}}%27&%24select=userId%2Cusername' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `USER_EMAIL` (string) – Used to retrieve the `UserId` of the user.

### API#2:  Get Direct Reports By Email

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/User?%24filter=email%20eq%20%27{{MANAGER_EMAIL}}%27&%24expand=directReports&%24select=userId%2Cemail%2CdisplayName%2CdirectReports%2FuserId%2CdirectReports%2FdisplayName%2CdirectReports%2Femail%2CdirectReports%2Ftitle%2CdirectReports%2Fdepartment%2CdirectReports%2Flocation%2CdirectReports%2FbusinessPhone%2CdirectReports%2Fcity%2CdirectReports%2FhireDate%2CdirectReports%2FemployeeClass%2CdirectReports%2Fstatus' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `MANAGER_EMAIL` (string) – Used to retrieve their team members’ `UserId`.

### API#3: Get Past Performance Ratings By User ID

```bash
curl --location 'https://<YOUR_INSTANCE>>/odata/v2/FormFolder?%24filter=userId%20eq%20%27{{USER_ID}}%27%20and%20folderName%20eq%20%27Completed%27%20and%20forms%2FformHeader%2FformReviewEndDate%20ge%20datetime%27{{START_DATE}}%27%20and%20forms%2FformHeader%2FformReviewEndDate%20le%20datetime%27{{END_DATE}}%27&%24expand=forms%2C%20forms%2FformHeader&%24select=userId%2CfolderName%20%2Cforms%2FformHeader%2Frating%2Cforms%2FformHeader%2FformTitle%2Cforms%2FformHeader%2FformTemplateType%2Cforms%2FformHeader%2FformReviewStartDate%2Cforms%2FformHeader%2FformReviewEndDate%2Cforms%2FformHeader%2FisRated' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>>' \
```

**Query Parameters:**

- `USER_ID` (string) – Used to retrieve particular user’s performance ratings.
- `START_DATE` (string) - Used to specify the **beginning date** of review.
- `END_DATE` (string) - Used to specify the **end** **date** of review.