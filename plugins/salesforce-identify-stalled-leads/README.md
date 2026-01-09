---
availability: INSTALLABLE
description: A plugin that allows users to identify their stalled leads with no activity
  in a given timeframe.
installation_asset_uuid: 0ce029b3-f270-4ec5-9df5-552623ecb96a
name: Identify Stalled Leads
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Find+my+stalled+leads+in+Salesforce.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ECertainly.+I+can+find+leads+assigned+to+you+with+no+recent+activity.+How+many+days+without+activity+should+I+look+for%3F+%28e.g.%2C+14%2C+30%2C+60%29%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%2230%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESearching+Salesforce+for+leads+assigned+to+you+with+no+activity+in+the+last+30+days.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+3+leads+assigned+to+you+with+no+activity+in+the+last+30+days.+Here+they+are%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EMichael+Johnson%3C%2Fb%3E%3Cul%3E%3Cli%3ECompany%3A+Apex+Solutions%3C%2Fli%3E%3Cli%3EEmail%3A+michael.johnson%40apexsolutions.com%3C%2Fli%3E%3Cli%3ETitle%3A+Director+of+Sales%3C%2Fli%3E%3Cli%3EPhone%3A+555-123-4567%3C%2Fli%3E%3Cli%3EStatus%3A+New+Lead%3C%2Fli%3E%3Cli%3ELast+Activity%3A+June+28%2C+2025%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ESarah+Davis%3C%2Fb%3E%3Cul%3E%3Cli%3ECompany%3A+Global+Exports+Inc.%3C%2Fli%3E%3Cli%3EEmail%3A+sarah.davis%40globalexports.com%3C%2Fli%3E%3Cli%3ETitle%3A+Procurement+Manager%3C%2Fli%3E%3Cli%3EPhone%3A+555-987-6543%3C%2Fli%3E%3Cli%3EStatus%3A+Working%3C%2Fli%3E%3Cli%3ELast+Activity%3A+July+05%2C+2025%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EChris+Martinez%3C%2Fb%3E%3Cul%3E%3Cli%3ECompany%3A+Innovatech+Builders%3C%2Fli%3E%3Cli%3EEmail%3A+chris.martinez%40innovatech.com%3C%2Fli%3E%3Cli%3ETitle%3A+Project+Lead%3C%2Fli%3E%3Cli%3EPhone%3A+555-555-1212%3C%2Fli%3E%3Cli%3EStatus%3A+Open+-+Not+Contacted%3C%2Fli%3E%3Cli%3ELast+Activity%3A+June+21%2C+2025%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Lead%3A+Michael+Johnson%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Lead%3A+Sarah+Davis%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Lead%3A+Chris+Martinez%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

## **Introduction**

The **“Identify Stalled Leads”** plugin helps you find sales leads that haven't had any activity (like calls, emails, or updates) within a specified number of days. This is useful for spotting leads that may have been forgotten or need re-engagement.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Find+my+stalled+leads+in+Salesforce.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ECertainly.+I+can+find+leads+assigned+to+you+with+no+recent+activity.+How+many+days+without+activity+should+I+look+for%3F+%28e.g.%2C+14%2C+30%2C+60%29%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%2230%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESearching+Salesforce+for+leads+assigned+to+you+with+no+activity+in+the+last+30+days.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+3+leads+assigned+to+you+with+no+activity+in+the+last+30+days.+Here+they+are%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EMichael+Johnson%3C%2Fb%3E%3Cul%3E%3Cli%3ECompany%3A+Apex+Solutions%3C%2Fli%3E%3Cli%3EEmail%3A+michael.johnson%40apexsolutions.com%3C%2Fli%3E%3Cli%3ETitle%3A+Director+of+Sales%3C%2Fli%3E%3Cli%3EPhone%3A+555-123-4567%3C%2Fli%3E%3Cli%3EStatus%3A+New+Lead%3C%2Fli%3E%3Cli%3ELast+Activity%3A+June+28%2C+2025%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ESarah+Davis%3C%2Fb%3E%3Cul%3E%3Cli%3ECompany%3A+Global+Exports+Inc.%3C%2Fli%3E%3Cli%3EEmail%3A+sarah.davis%40globalexports.com%3C%2Fli%3E%3Cli%3ETitle%3A+Procurement+Manager%3C%2Fli%3E%3Cli%3EPhone%3A+555-987-6543%3C%2Fli%3E%3Cli%3EStatus%3A+Working%3C%2Fli%3E%3Cli%3ELast+Activity%3A+July+05%2C+2025%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EChris+Martinez%3C%2Fb%3E%3Cul%3E%3Cli%3ECompany%3A+Innovatech+Builders%3C%2Fli%3E%3Cli%3EEmail%3A+chris.martinez%40innovatech.com%3C%2Fli%3E%3Cli%3ETitle%3A+Project+Lead%3C%2Fli%3E%3Cli%3EPhone%3A+555-555-1212%3C%2Fli%3E%3Cli%3EStatus%3A+Open+-+Not+Contacted%3C%2Fli%3E%3Cli%3ELast+Activity%3A+June+21%2C+2025%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Lead%3A+Michael+Johnson%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Lead%3A+Sarah+Davis%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Lead%3A+Chris+Martinez%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Salesforce** first, prior to installing this plugin. Please follow the [Salesforce Connector](https://marketplace.moveworks.com/connectors/salesforce#how-to-implement) guide to set up the connector.

Specifically, confirm the following permissions are granted:

- **Object Access**: `Read` access to the **Lead** object.
- Ensure the user has permission to view lead records relevant to their team or territory.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix**

### **API #1: Get Stalled Leads By Email and Time Range**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT Id, Name, Title, Company, Email, Phone, Street, City, State, PostalCode, Country, Status, OwnerId, Owner.Name, Owner.Email, CreatedDate, LastActivityDate FROM Lead WHERE Owner.Email = '{{email}}' AND (LastActivityDate < LAST_N_DAYS:{{days}}) ORDER BY LastActivityDate ASC LIMIT 50' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `{{email}}` - Retrieves user by email.
- `{{days}}`  - Number of inactive days to check for stalled leads.