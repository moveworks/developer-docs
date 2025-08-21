---
availability: IDEA
description: A plugin that allows users to summarize recent activities for an account
  (calls, tasks, events ,etc).
domain:
- Sales
fidelity: GUIDE
name: Summarize Recent Activity History for an Account
difficulty_level: BEGINNER
time_in_minutes: 20
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Summarize+the+activity+history+for+an+account.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOf+course.+Here+is+a+list+of+your+accounts.+Which+one+would+you+like+to+see+the+activity+history+for%3F+Please+reply+with+the+number.%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3EApex+Solutions%3C%2Fli%3E%3Cli%3EGlobal+Exports+Inc.%3C%2Fli%3E%3Cli%3EInnovatech+Builders%3C%2Fli%3E%3Cli%3ESummit+Financial%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%221%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOkay%2C+I+will+summarize+activity+for+%3Cb%3EApex+Solutions%3C%2Fb%3E.+How+far+back+should+I+look%3F+You+can+reply+with+a+number+of+days+%28e.g.%2C+30%2C+60%2C+90%29.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%2260%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+the+activity+summary+for+%3Cb%3EApex+Solutions%3C%2Fb%3E+for+the+past+60+days%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EJuly+28%2C+2025+%28Call%29%3A%3C%2Fb%3E+Spoke+with+Michael+Johnson+regarding+the+Q4+implementation+timeline.%3C%2Fli%3E%3Cli%3E%3Cb%3EJuly+15%2C+2025+%28Email%29%3A%3C%2Fb%3E+Sent+proposal+documents+to+Sarah+Davis.%3C%2Fli%3E%3Cli%3E%3Cb%3EJuly+14%2C+2025+%28Task%29%3A%3C%2Fb%3E+Followed+up+on+pricing+question.%3C%2Fli%3E%3Cli%3E%3Cb%3EJune+25%2C+2025+%28Event%29%3A%3C%2Fb%3E+Q3+Business+Review+meeting+with+Michael+Johnson.%3C%2Fli%3E%3Cli%3E%3Cb%3EJune+18%2C+2025+%28Call%29%3A%3C%2Fb%3E+Initial+discovery+call+with+the+technical+team.%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThis+is+the+complete+activity+history+for+the+selected+period.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Apex+Solutions%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce

---
## Introduction

The “**Summarize Recent Activity History for an Account”** plugin allows users to instantly view a consolidated summary of recent activities related to a specific account, directly from Salesforce using the Moveworks AI Assistant. This enables teams to efficiently understand account activity, monitor progress, and stay coordinated without having to go through multiple Salesforce reports.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Summarize+the+activity+history+for+an+account.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOf+course.+Here+is+a+list+of+your+accounts.+Which+one+would+you+like+to+see+the+activity+history+for%3F+Please+reply+with+the+number.%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3EApex+Solutions%3C%2Fli%3E%3Cli%3EGlobal+Exports+Inc.%3C%2Fli%3E%3Cli%3EInnovatech+Builders%3C%2Fli%3E%3Cli%3ESummit+Financial%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%221%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOkay%2C+I+will+summarize+activity+for+%3Cb%3EApex+Solutions%3C%2Fb%3E.+How+far+back+should+I+look%3F+You+can+reply+with+a+number+of+days+%28e.g.%2C+30%2C+60%2C+90%29.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%2260%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+the+activity+summary+for+%3Cb%3EApex+Solutions%3C%2Fb%3E+for+the+past+60+days%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EJuly+28%2C+2025+%28Call%29%3A%3C%2Fb%3E+Spoke+with+Michael+Johnson+regarding+the+Q4+implementation+timeline.%3C%2Fli%3E%3Cli%3E%3Cb%3EJuly+15%2C+2025+%28Email%29%3A%3C%2Fb%3E+Sent+proposal+documents+to+Sarah+Davis.%3C%2Fli%3E%3Cli%3E%3Cb%3EJuly+14%2C+2025+%28Task%29%3A%3C%2Fb%3E+Followed+up+on+pricing+question.%3C%2Fli%3E%3Cli%3E%3Cb%3EJune+25%2C+2025+%28Event%29%3A%3C%2Fb%3E+Q3+Business+Review+meeting+with+Michael+Johnson.%3C%2Fli%3E%3Cli%3E%3Cb%3EJune+18%2C+2025+%28Call%29%3A%3C%2Fb%3E+Initial+discovery+call+with+the+technical+team.%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThis+is+the+complete+activity+history+for+the+selected+period.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Apex+Solutions%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**Salesforce Connector Guide**](https://marketplace.moveworks.com/connectors/salesforce?hist=home%2Cplgn.salesforce-create-campaign-inside-account%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Salesforce integration user has the following permissions:

**Required Permissions:**

- **`Read access`** to the **Account** object – for retrieving account details and metadata.
- **`Read access`** to the **Task** object – for fetching recent tasks associated with an Account
- **`Read access`** to the **Event** object – for fetching recent events associated with an Account
- **`API Enabled permission`**  – required to execute SOQL queries and composite batch requests through the Salesforce REST API.

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

## **Appendix**

### **API #1: Get All Accounts By Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/query/?q=SELECT+Id%2C+Name%2C+Type%2C+Industry%2C+CreatedDate+FROM+Account+WHERE+Id+IN+(SELECT+AccountId+FROM+Contact+WHERE+Email%3D%27{{EMAIL}}%27)+ORDER+BY+CreatedDate+DESC' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

```

**Query Parameters:**

- `EMAIL` (string) – The email address of the contact.

### API #2: Get Recent Tasks & Events for an Account

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/composite/batch' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "batchRequests": [
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,Subject,ActivityDate,Status,Description,CallType,CallDurationInSeconds,Priority,TaskSubtype,Owner.Name,Who.Name,WhatId,What.Name+FROM+Task+WHERE+WhatId='\''{{ACCOUNT_ID}}'\''+AND+ActivityDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+ActivityDate+DESC"
    },
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,Subject,ActivityDate,DurationInMinutes,Description,Owner.Name,Who.Name,WhatId,What.Name+FROM+Event+WHERE+WhatId='\''{{ACCOUNT_ID}}'\''+AND+ActivityDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+ActivityDate+DESC"
    }
  ]
}'

```

**Query Parameters:**

- `ACCOUNT_ID` (string) – Salesforce Account Id for which activities are being fetched.
- `TIME_RANGE` (integer) – Specifies how many previous days’ records should be retrieved.
