---
availability: INSTALLABLE
description: A plugin to help sales teams ask which opportunities are in what stage
  for easy transparency.
installation_asset_uuid: a58161eb-f3a7-4f5a-9e1a-e8a5827cad7d
name: Identify Scoping Stage
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+summarize+my+opportunities+by+stage%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Aggregates+and+names+opportunity+stages+for+the+user%27s+account+from+Salesforce%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+a+summary+of+your+current+opportunities+by+stage+with+their+names%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EProspecting%3C%2Fb%3E%3Cbr%3E%3Cb%3EOpportunities%3A%3C%2Fb%3E+Acme+Inc.%2C+Beta+Corp.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ENeeds+Analysis%3C%2Fb%3E%3Cbr%3E%3Cb%3EOpportunities%3A%3C%2Fb%3E+Gamma+Tech%2C+Delta+Solutions%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EProposal%2FPrice+Quote%3C%2Fb%3E%3Cbr%3E%3Cb%3EOpportunities%3A%3C%2Fb%3E+Epsilon+Products%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ENegotiation%2FReview%3C%2Fb%3E%3Cbr%3E%3Cb%3EOpportunities%3A%3C%2Fb%3E+Zeta+Services%22%7D%5D%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

# Identify Scoping Stage

# Introduction:

The “**Identify Scoping Stage**” plugin enables sales teams to quickly view which opportunities are in each stage within Salesforce. By providing easy access to filtered opportunity data, it promotes pipeline transparency and streamlines sales tracking without needing complex manual searches.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

# Prerequisites

- Access to **Agent Studio**

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+summarize+my+opportunities+by+stage%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Aggregates+and+names+opportunity+stages+for+the+user%27s+account+from+Salesforce%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+a+summary+of+your+current+opportunities+by+stage+with+their+names%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EProspecting%3C%2Fb%3E%3Cbr%3E%3Cb%3EOpportunities%3A%3C%2Fb%3E+Acme+Inc.%2C+Beta+Corp.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ENeeds+Analysis%3C%2Fb%3E%3Cbr%3E%3Cb%3EOpportunities%3A%3C%2Fb%3E+Gamma+Tech%2C+Delta+Solutions%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EProposal%2FPrice+Quote%3C%2Fb%3E%3Cbr%3E%3Cb%3EOpportunities%3A%3C%2Fb%3E+Epsilon+Products%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ENegotiation%2FReview%3C%2Fb%3E%3Cbr%3E%3Cb%3EOpportunities%3A%3C%2Fb%3E+Zeta+Services%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for **Salesforce** first, prior to installing this plugin. Please follow the [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home) guide to set up the connector.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

# **Appendix**

### API #1 : Get Salesforce Opportunity name and Stage name

```bash
curl --location 'https://<API_SERVER_DOMAIN>/services/data/v63.0/query/?q=SELECT%20Name%2C%20StageName%2C%20Owner.Email%20FROM%20Opportunity%20WHERE%20Owner.Email%3D%27<Owner_EMAIL>%27%20LIMIT%2010' \
--header 'Authorization: Bearer [YOUR_ACCESS_TOKEN]' \
--header 'Content-Type: application/json' \
```

**Query Parameters:** 

- `email` (string) – The Salesforce user’s email address used to filter opportunities by owner.
