---
availability: INSTALLABLE
description: A plugin that allows you to reveal which campaigns are actually driving
  revenue and see all sales opportunities influenced by a specific marketing campaign,
  helping identify buying patterns for accounts and convert better.
installation_asset_uuid: 392e8220-e8c4-4698-8038-95a026d25490
name: Look Up Opportunities Influenced by a Marketing Campaign
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+want+to+view+opportunities+influenced+by+Web+Contact+Us+Q2+2025+campaign.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+opportunities+influenced+by+Web+Contact+Us+campaign+in+Salesforce%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+two+opportunities+influenced+by+the+%27Web+Contact+Us%27+campaign%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cb%3EOpportunity+1%3A%3C%2Fb%3E+Web+Lead+-+New+Client+Onboarding%2C+Influenced+by%3A+%5C%22Web+Contact+Us+Campaign%5C%22.+Current+Stage%3A+%5C%22Qualification%5C%22%2C+Amount%3A+%5C%22%245%2C000%5C%22%2C+Probability%3A+%5C%220.65%5C%22%2C+ARR%3A+%5C%22%245%2C000%5C%22%2C+Products%3A+%5C%22Basic+Service+Package%5C%22.%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EOpportunity+2%3A%3C%2Fb%3E+Web+Lead+-+Enterprise+Upgrade%2C+Influenced+by%3A+%5C%22Web+Contact+Us+Campaign%5C%22.+Current+Stage%3A+%5C%22Proposal%2FPrice+Quote%5C%22%2C+Amount%3A+%5C%22%2425%2C000%5C%22%2C+Probability%3A+%5C%220.40%5C%22%2C+ARR%3A+%5C%22%2425%2C000%5C%22%2C+Products%3A+%5C%22Premium+Service+Package%2C+Consulting+Hours%5C%22.%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWould+you+like+to+view+more+details+for+either+of+these%2C+or+perform+a+different+search%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Web+Lead+-+New+Client+Onboarding%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Web+Lead+-+Enterprise+Upgrade%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Productivity
- Sales
systems:
- salesforce
---

## **Introduction**

The Salesforce **“Look Up Opportunities Influenced by a Marketing Campaign”** plugin helps users quickly identify and review the opportunities associated with specific campaigns. By selecting a campaign, the plugin fetches and displays all related opportunities along with key details such as amount, stage, and account, making it easier to track campaign impact on revenue.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+want+to+view+opportunities+influenced+by+Web+Contact+Us+Q2+2025+campaign.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+opportunities+influenced+by+Web+Contact+Us+campaign+in+Salesforce%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+two+opportunities+influenced+by+the+%27Web+Contact+Us%27+campaign%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cb%3EOpportunity+1%3A%3C%2Fb%3E+Web+Lead+-+New+Client+Onboarding%2C+Influenced+by%3A+%5C%22Web+Contact+Us+Campaign%5C%22.+Current+Stage%3A+%5C%22Qualification%5C%22%2C+Amount%3A+%5C%22%245%2C000%5C%22%2C+Probability%3A+%5C%220.65%5C%22%2C+ARR%3A+%5C%22%245%2C000%5C%22%2C+Products%3A+%5C%22Basic+Service+Package%5C%22.%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EOpportunity+2%3A%3C%2Fb%3E+Web+Lead+-+Enterprise+Upgrade%2C+Influenced+by%3A+%5C%22Web+Contact+Us+Campaign%5C%22.+Current+Stage%3A+%5C%22Proposal%2FPrice+Quote%5C%22%2C+Amount%3A+%5C%22%2425%2C000%5C%22%2C+Probability%3A+%5C%220.40%5C%22%2C+ARR%3A+%5C%22%2425%2C000%5C%22%2C+Products%3A+%5C%22Premium+Service+Package%2C+Consulting+Hours%5C%22.%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWould+you+like+to+view+more+details+for+either+of+these%2C+or+perform+a+different+search%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Web+Lead+-+New+Client+Onboarding%22%7D%2C%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Web+Lead+-+Enterprise+Upgrade%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Salesforce** before installing this plugin. Please follow the [Salesforce Connector](https://marketplace.moveworks.com/connectors/salesforce?hist=home%2Cbrws#how-to-implement) guide to configure the connection.

**Note:** To enable the Campaign List functionality, ensure that the Salesforce integration user has the required object and field-level permissions.

Specifically, verify that the following permissions are granted:

- **Object Access:** Read access to the **Campaign** and **Opportunity** objects.
- **Field Access:** Read access to fields such as **Id, Name, CreatedDate, Status, Type** (for Campaigns) and **Id, Name, Amount, StageName, CreatedDate, CloseDate** (for Opportunities).

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Fetch Campaigns by Name**

```bash
curl --location --request GET 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT Id, Name, CreatedDate, Status, Type FROM Campaign WHERE Name LIKE '%{{campaign_name}}%' ORDER BY CreatedDate DESC' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
```

**Path Parameter:**

`campaign_name` : (string) - Fetches the list of campaigns.

### **API #2: Retrieve Opportunities for a Campaign by Id**

```bash
curl --location --request GET 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT Id, Name, (SELECT Id, Name, Amount, StageName, CreatedDate, CloseDate  FROM Opportunities) FROM Campaign WHERE Id='{{campaign}}'' \
--header 'Content-Type: application/json' \                                            
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
```

**Path Parameter:**

`campaign` :  (string) - Fetches the list of opportunities associated with a campaign.