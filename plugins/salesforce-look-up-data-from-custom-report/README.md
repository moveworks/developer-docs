---
availability: IDEA
description: A plugin that allows users to access and query Salesforce public reports
  or their own private reports.
domain:
- Productivity
- General
fidelity: GUIDE
name: Look Up Data from a Custom Report
difficulty_level: INTERMEDIATE
time_in_minutes: 20
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22How+many+people+attended+the+SFO+hackathon%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+custom+reports+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E+related+to+%5C%22SFO+hackathon%5C%22...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+reports+that+might+contain+this+information.+Which+one+would+you+like+to+query%3F%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3ESFO+Hackathon+Attendance+Summary+2025%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ESFO+Hackathon+Events+Participant+List%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ESFO+Hackathon+Registrations+Q4+FY25%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThe+first+one%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Querying+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESFO+Hackathon+Attendance+Summary+2023%3C%2Fb%3E+report+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThe+%3Cb%3ESFO+Hackathon+Attendance+Summary+2023%3C%2Fb%3E+report+shows+that+there+were+%3Cb%3E500+participants%3C%2Fb%3E.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EDo+you+have+any+other+questions+regarding+this+report%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22SFO+Hackathon+Attendance+Summary+2023%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22How+many+visited+a+booth+and+signed+up+for+our+new+LP+program%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Querying+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESFO+Hackathon+Attendance+Summary+2023%3C%2Fb%3E+report+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E+for+specific+metrics...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EBased+on+the+%3Cb%3ESFO+Hackathon+Attendance+Summary+2023%3C%2Fb%3E+report%2C+%3Cb%3E150+participants%3C%2Fb%3E+visited+a+booth+and+signed+up+for+the+new+LP+program.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22SFO+Hackathon+Attendance+Summary+2023%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- General
- Productivity
systems:
- salesforce

---
## **Introduction**

The “**Look Up Data from a Custom Report”** plugin enables users to access and query Salesforce public reports or their own private reports directly through the Moveworks AI Assistant. It allows users to fetch specific data points (rows and fields) from any configured report and receive them instantly within the conversation. This is ideal for teams like Sales, Support, Operations, or Finance who frequently reference Salesforce reports and want quick insights without navigating the Salesforce UI.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22How+many+people+attended+the+SFO+hackathon%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+custom+reports+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E+related+to+%5C%22SFO+hackathon%5C%22...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+reports+that+might+contain+this+information.+Which+one+would+you+like+to+query%3F%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3ESFO+Hackathon+Attendance+Summary+2025%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ESFO+Hackathon+Events+Participant+List%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ESFO+Hackathon+Registrations+Q4+FY25%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThe+first+one%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Querying+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESFO+Hackathon+Attendance+Summary+2023%3C%2Fb%3E+report+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThe+%3Cb%3ESFO+Hackathon+Attendance+Summary+2023%3C%2Fb%3E+report+shows+that+there+were+%3Cb%3E500+participants%3C%2Fb%3E.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EDo+you+have+any+other+questions+regarding+this+report%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22SFO+Hackathon+Attendance+Summary+2023%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22How+many+visited+a+booth+and+signed+up+for+our+new+LP+program%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Querying+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESFO+Hackathon+Attendance+Summary+2023%3C%2Fb%3E+report+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E+for+specific+metrics...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EBased+on+the+%3Cb%3ESFO+Hackathon+Attendance+Summary+2023%3C%2Fb%3E+report%2C+%3Cb%3E150+participants%3C%2Fb%3E+visited+a+booth+and+signed+up+for+the+new+LP+program.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22SFO+Hackathon+Attendance+Summary+2023%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Salesforce** first, prior to installing this plugin. Please follow the [Salesforce Connector](https://marketplace.moveworks.com/connectors/salesforce#how-to-implement) guide to set up the connector.

Specifically, confirm the following permissions are granted:

**Report-Level Permissions:**

- Run Reports
- Access to the report’s folder:
    - If querying public reports: Must have access to Public Reports folder.
    - If querying private reports: User must own the report OR the report must be shared with the integration user.

**Object & Field-Level Permissions:**

- Read access to all Salesforce objects used in the report (e.g. Accounts, Opportunities, Cases, Leads, Custom Objects, etc.)
- Read access to all fields used in the report’s columns and filters.

Note: Please keep the report size under 4 MB, as there are limitations on how much data the plugin can process from a single API call.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix**

### **API #1: Fetch Reports by User Email**

This API retrieves a list of Salesforce reports owned by a specific user based on their email address. It allows users to identify the Report ID, folder, and owner information before fetching report data.

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT Id,Name,FolderName,Owner.Name,Owner.Email,OwnerId FROM Report WHERE Owner.Email = '{{email}}'' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters**


- `SELECT` – Specifies which fields to return. For example: Id, Name, FolderName, Owner.Name, Owner.Email, OwnerId.
- `{{email}}` – Filters reports to only those owned by the specified user email.

### **API #2: Retrieve Report Data**

This API retrieves the data and metadata of a specific Salesforce report using its Report ID. Users can get report columns, rows, aggregates, and applied filters.

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.0/analytics/reports/{{report_id}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters**

- `{{report_id}}` – The unique ID of the Salesforce report used to fetch its data.