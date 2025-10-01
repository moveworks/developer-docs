---
availability: INSTALLABLE
description: A plugin that summarizes the current backlog of open cases in Salesforce
  queues.
difficulty_level: BEGINNER
domain:
- Sales
- Support
- Ticketing
fidelity: TEMPLATE
installation_asset_uuid: 594733bb-d9e6-4ab3-a9be-59f0d46d3a49
name: Summarize Case Queue Backlog
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Summarize+my+queue+backlog.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+queues+you+are+a+member+of+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+all+open+cases+from+the+identified+queues+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere%27s+a+summary+of+your+current+open+case+backlog+across+your+queues%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EIT+Support+Queue%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Open+Cases%3A+15%3C%2Fli%3E%3Cli%3EHigh+Priority%3A+3%3C%2Fli%3E%3Cli%3EMedium+Priority%3A+7%3C%2Fli%3E%3Cli%3ELow+Priority%3A+5%3C%2Fli%3E%3Cli%3EAverage+Age%3A+2.5+days%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EBilling+Support+Queue%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Open+Cases%3A+8%3C%2Fli%3E%3Cli%3EHigh+Priority%3A+1%3C%2Fli%3E%3Cli%3EMedium+Priority%3A+4%3C%2Fli%3E%3Cli%3ELow+Priority%3A+3%3C%2Fli%3E%3Cli%3EAverage+Age%3A+1.1+days%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EProduct+Feedback+Queue%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Open+Cases%3A+5%3C%2Fli%3E%3Cli%3EHigh+Priority%3A+0%3C%2Fli%3E%3Cli%3EMedium+Priority%3A+2%3C%2Fli%3E%3Cli%3ELow+Priority%3A+3%3C%2Fli%3E%3Cli%3EAverage+Age%3A+3.8+days%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22IT+Support+Queue%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Billing+Support+Queue%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Product+Feedback+Queue%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+oldest+3+cases+in+the+IT+Support+Queue.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Filtering+open+cases+in+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EIT+Support+Queue%3C%2Fb%3E+by+age+to+find+the+oldest+3...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+3+oldest+cases+in+the+%3Cb%3EIT+Support+Queue%3C%2Fb%3E%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ECase+%2300010234%3C%2Fb%3E%3Cul%3E%3Cli%3ESubject%3A+Email+sync+issues+for+John+Doe%3C%2Fli%3E%3Cli%3EPriority%3A+High%3C%2Fli%3E%3Cli%3EAge%3A+4+days%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ECase+%2300010235%3C%2Fb%3E%3Cul%3E%3Cli%3ESubject%3A+Laptop+replacement+request+-+Jane+Smith%3C%2Fli%3E%3Cli%3EPriority%3A+Medium%3C%2Fli%3E%3Cli%3EAge%3A+3.8+days%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ECase+%2300010237%3C%2Fb%3E%3Cul%3E%3Cli%3ESubject%3A+Software+installation+help+-+Marketing+Team%3C%2Fli%3E%3Cli%3EPriority%3A+Medium%3C%2Fli%3E%3Cli%3EAge%3A+3.1+days%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Case+%2300010234%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Case+%2300010235%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Case+%2300010237%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Sales
- Support
- Ticketing
systems:
- salesforce
time_in_minutes: 20
---

## Introduction
The “Summarize Queue Backlog” plugin enables support teams to gain instant visibility into their open case workload within Salesforce queues using the Moveworks AI Assistant. It provides a consolidated snapshot of backlog metrics—such as total open cases, distribution by priority, and average case age—across the queues agents belong to. This empowers teams to triage effectively, balance workloads, and take timely action to improve customer response times, without navigating complex Salesforce reports or dashboards.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Summarize+my+queue+backlog.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+queues+you+are+a+member+of+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+all+open+cases+from+the+identified+queues+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere%27s+a+summary+of+your+current+open+case+backlog+across+your+queues%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EIT+Support+Queue%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Open+Cases%3A+15%3C%2Fli%3E%3Cli%3EHigh+Priority%3A+3%3C%2Fli%3E%3Cli%3EMedium+Priority%3A+7%3C%2Fli%3E%3Cli%3ELow+Priority%3A+5%3C%2Fli%3E%3Cli%3EAverage+Age%3A+2.5+days%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EBilling+Support+Queue%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Open+Cases%3A+8%3C%2Fli%3E%3Cli%3EHigh+Priority%3A+1%3C%2Fli%3E%3Cli%3EMedium+Priority%3A+4%3C%2Fli%3E%3Cli%3ELow+Priority%3A+3%3C%2Fli%3E%3Cli%3EAverage+Age%3A+1.1+days%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EProduct+Feedback+Queue%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Open+Cases%3A+5%3C%2Fli%3E%3Cli%3EHigh+Priority%3A+0%3C%2Fli%3E%3Cli%3EMedium+Priority%3A+2%3C%2Fli%3E%3Cli%3ELow+Priority%3A+3%3C%2Fli%3E%3Cli%3EAverage+Age%3A+3.8+days%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22IT+Support+Queue%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Billing+Support+Queue%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Product+Feedback+Queue%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+oldest+3+cases+in+the+IT+Support+Queue.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Filtering+open+cases+in+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EIT+Support+Queue%3C%2Fb%3E+by+age+to+find+the+oldest+3...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+3+oldest+cases+in+the+%3Cb%3EIT+Support+Queue%3C%2Fb%3E%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ECase+%2300010234%3C%2Fb%3E%3Cul%3E%3Cli%3ESubject%3A+Email+sync+issues+for+John+Doe%3C%2Fli%3E%3Cli%3EPriority%3A+High%3C%2Fli%3E%3Cli%3EAge%3A+4+days%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ECase+%2300010235%3C%2Fb%3E%3Cul%3E%3Cli%3ESubject%3A+Laptop+replacement+request+-+Jane+Smith%3C%2Fli%3E%3Cli%3EPriority%3A+Medium%3C%2Fli%3E%3Cli%3EAge%3A+3.8+days%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ECase+%2300010237%3C%2Fb%3E%3Cul%3E%3Cli%3ESubject%3A+Software+installation+help+-+Marketing+Team%3C%2Fli%3E%3Cli%3EPriority%3A+Medium%3C%2Fli%3E%3Cli%3EAge%3A+3.1+days%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Case+%2300010234%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Case+%2300010235%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Case+%2300010237%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**Salesforce Connector Guide**](https://marketplace.moveworks.com/connectors/salesforce?hist=home%2Cplgn.salesforce-create-campaign-inside-account%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Salesforce integration user has the following permissions:

**Required Permissions:**

- **`Read access`**  to the **User**, **Group**, **GroupMember**, and **Case** objects

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

## **Appendix**

### **API #1: Get Queues for a Salesforce User by Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/query/?q=SELECT+Group.Name%2C+GroupId%2C+Group.Type+FROM+GroupMember+WHERE+UserOrGroupId+IN+(SELECT+Id+FROM+User+WHERE+Email%3D%27{{EMAIL}}%27)+AND+Group.Type%3D%27Queue%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'

```

**Query Parameters:**

- `EMAIL` (string) – The email address of the Salesforce user whose queue memberships will be retrieved.

### **API #2: Get Open Cases by Queue ID**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/query/?q=SELECT+Id%2C+CaseNumber%2C+Subject%2C+IsEscalated%2C+Type%2C+Status%2C+Priority%2C+OwnerId%2C+Owner.Name%2C+CreatedDate%2C+LastModifiedDate%2C+ClosedDate%2C+Contact.Name%2C+Contact.Email%2C+Account.Industry%2C+Account.Name%2C+Description%2C+Origin%2C+IsClosed%2C+Reason%2C+SuppliedName%2C+SuppliedEmail%2C+AccountId%2C+ContactId+FROM+Case+WHERE+IsClosed%3Dfalse+AND+OwnerId+IN+(SELECT+UserOrGroupId+FROM+GroupMember+WHERE+GroupId%3D%27{{QUEUE_ID}}%27)+AND+CreatedDate%3E{{FROM_DATE}}+AND+CreatedDate%3C{{TO_DATE}}+ORDER+BY+CreatedDate+DESC+LIMIT+500' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'

```

**Query Parameters:**

- `QUEUE_ID` (string) – The Salesforce Queue ID to fetch cases from.
- `FROM_DATE` (string) – Start date to filter cases by CreatedDate (format: `YYYY-MM-DDTHH:MM:SSZ`).
- `TO_DATE` (string) – End date to filter cases by CreatedDate (format: `YYYY-MM-DDTHH:MM:SSZ`).