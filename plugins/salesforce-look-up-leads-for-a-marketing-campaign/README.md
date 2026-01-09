---
availability: INSTALLABLE
description: A plugin that allows users to get leads for a marketing campaign in Salesforce.
installation_asset_uuid: bf62ad58-0ea8-46c1-9d19-a993e50424c1
name: Look Up Leads for a Marketing Campaign
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ewhat+are+the+leads+for+Q2+2025+Global+campaigns%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+Salesforce+for+campaigns+matching+%27Q2+2025+Global%27.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThere+are+multiple+Q2+2025+Global+campaigns+available.+Please+select+which+campaign+you+want+to+see+leads+for%3A%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cstrong%3E1.%3C%2Fstrong%3E+Q2-2025-Global-Outreach+%28ID%3A+C-010%29%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cstrong%3E2.%3C%2Fstrong%3E+Q2-2025-Global-Partner-Enablement+%28ID%3A+C-011%29%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cstrong%3E3.%3C%2Fstrong%3E+Q2-2025-Global-Product-Launch+%28ID%3A+C-012%29%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%221%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+leads+for+Q2-2025-Global-Outreach+%28C-010%29.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+leads+found+for+the+%3Cstrong%3EQ2-2025-Global-Outreach%3C%2Fstrong%3E+campaign%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cstrong%3EEleanor+Vance%3C%2Fstrong%3E+%28Data+Solutions+Corp%29+-+eleanor.vance%40example.com+-+Status%3A+New%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMarcus+Chen%3C%2Fstrong%3E+%28Quantum+Innovations%29+-+marcus.chen%40example.com+-+Status%3A+Contacted%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ESophia+Garcia%3C%2Fstrong%3E+%28Global+Connect+Ltd%29+-+sophia.garcia%40example.com+-+Status%3A+Qualified%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDavid+Lee%3C%2Fstrong%3E+%28NextGen+Technologies%29+-+david.lee%40example.com+-+Status%3A+Engaged%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThere+are+many+more+leads+in+this+campaign.+If+you+need+the+full+list+or+more+details+about+any+specific+lead%2C+let+me+know%21%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Productivity
- Sales
systems:
- salesforce
---

# **Introduction**

The **Look Up Leads for a Marketing Campaign** plugin empowers sales reps to instantly pull a list of all prospects who have responded to a recent marketing campaign. By getting real-time access to the most recent and relevant leads, reps can prioritize outreach and take immediate action, ensuring no hot lead falls through the cracks. This streamlines the sales process, boosts productivity, and helps accelerate pipeline growth directly from the AI Assistant.

This guide will walk you through the simple installation process in Agent Studio. Let’s get started!

# **Prerequisites**

- Access to Agent Studio

# **What are we building?**

# **Agent Design**

This [**purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ewhat+are+the+leads+for+Q2+2025+Global+campaigns%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+Salesforce+for+campaigns+matching+%27Q2+2025+Global%27.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThere+are+multiple+Q2+2025+Global+campaigns+available.+Please+select+which+campaign+you+want+to+see+leads+for%3A%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cstrong%3E1.%3C%2Fstrong%3E+Q2-2025-Global-Outreach+%28ID%3A+C-010%29%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cstrong%3E2.%3C%2Fstrong%3E+Q2-2025-Global-Partner-Enablement+%28ID%3A+C-011%29%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cstrong%3E3.%3C%2Fstrong%3E+Q2-2025-Global-Product-Launch+%28ID%3A+C-012%29%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%221%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+leads+for+Q2-2025-Global-Outreach+%28C-010%29.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+leads+found+for+the+%3Cstrong%3EQ2-2025-Global-Outreach%3C%2Fstrong%3E+campaign%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cstrong%3EEleanor+Vance%3C%2Fstrong%3E+%28Data+Solutions+Corp%29+-+eleanor.vance%40example.com+-+Status%3A+New%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMarcus+Chen%3C%2Fstrong%3E+%28Quantum+Innovations%29+-+marcus.chen%40example.com+-+Status%3A+Contacted%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ESophia+Garcia%3C%2Fstrong%3E+%28Global+Connect+Ltd%29+-+sophia.garcia%40example.com+-+Status%3A+Qualified%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDavid+Lee%3C%2Fstrong%3E+%28NextGen+Technologies%29+-+david.lee%40example.com+-+Status%3A+Engaged%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThere+are+many+more+leads+in+this+campaign.+If+you+need+the+full+list+or+more+details+about+any+specific+lead%2C+let+me+know%21%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

We recommend creating the connector for Salesforce first, prior to installing this plugin. Please follow the [**Salesforce Connector**](https://marketplace.moveworks.com/creator-studio/resources/connector/?id=salesforce) guide to create the connector.

After you have configured the connector, please refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# **Appendix**

### **API #1: Salesforce SOQL Query API**

An API for Salesforce to execute the specified SOQL Query. Here, our query would be related to the **`Campaign`** object. The below API gives a list of campaigns matching particular keywords given as the input. Here is an example of a sample query API using a SOQL query on the Account object. 

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/query?q=SELECT%20Id%2C%20CreatedDate%2C%20Name%20FROM%20Campaign%20WHERE%20Name%20LIKE%20%27%25Q4%Campaign%2025%25%27%20ORDER%20BY%20CreatedDate%20DESC' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Query Parameters :**

- Key ( **q** ) : Value ( **{{SELECT Id, CreatedDate, Name FROM Campaign WHERE Name LIKE '%Q4%Campaign%2025%' ORDER BY CreatedDate DESC}}** )

The Query we used here is:

```bash
SELECT Id, CreatedDate, Name FROM Campaign WHERE Name LIKE '%Q4%Campaign%2025%' ORDER BY CreatedDate DESC
```

You can pass multiple keywords with spaces to the `LIKE` operator to search for objects that contain all of those keywords. 

**For example**, to search for a campaign named "Q4 Campaigns 2025", you can use the SOQL query with `'%Q4%Campaigns%2025%'`. The query will then look for records that have "Q4," "Campaigns," and "2025" in any order, with any characters in between.

### **API #2: Salesforce SOQL Query API**

An API for Salesforce to execute the specified SOQL Query. Here, our query would be related to the **`CampaignMember`** object to fetch leads for a given **`campaignId`**. Here is an example of a sample query API using a SOQL query on the Account object.

```jsx
curl --location 'https://<YOUR_DOMAIN>/services/data/v64.0/query?q=SELECT%2CType%2C%20Lead.Owner.Email%2C%20LeadId%2C%20Lead.FirstName%2C%20Lead.LastName%2C%20Lead.Email%2C%20Lead.Company%2C%20Lead.Status%20FROM%20CampaignMember%20WHERE%20CampaignId%20%3D%20%27601Ed00000KQay1IAD%27%20AND%20LeadId%20%21%3D%20NULL%20AND%20Type%3D%27Lead%27' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Query Parameters :**

- Key ( **q** ) : Value ( **{{SELECT Type, Lead.Owner.Email, LeadId, Lead.FirstName, Lead.LastName, Lead.Email, Lead.Company, Lead.Status FROM CampaignMember WHERE CampaignId = '601Ed00000KQay1IAD' AND LeadId != NULL AND Type='Lead'}}** )

The Query we used here is:

```bash
SELECT Type, LeadId, Lead.FirstName, Lead.LastName, Lead.Email, Lead.Company, Lead.Status FROM CampaignMember WHERE CampaignId = '601Ed00000KQay1IAD' AND LeadId != NULL AND Type='Lead'
```

In the above example, we have used only Standard Salesforce objects, however, you can also use the [**Custom**](https://help.salesforce.com/s/articleView?id=sf.basics_object_types.htm&type=5) objects that is defined in your Salesforce instance to build the Query. Custom objects can be identified by the trailing __c after their name. You can visit [**https://workbench.developerforce.com**](https://workbench.developerforce.com/) and explore the different fields present within the Lead/Campaign object. You can also try out different SOQL queries and use the one which you think is a best fit for the Use Case.
