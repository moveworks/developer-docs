---
availability: INSTALLABLE
description: A plugin that allows you to retrieve customer data from Salesforce.
installation_asset_uuid: ee80c2e8-81e8-492d-8d2f-8855b479716f
name: Look up Salesforce Accounts
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+is+the+Renewal+date+for+ACME%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Query+Salesforce+Accounts+API+endpoint%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+renewal+date+for+ACME+is+on+February+25%2C+2026%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22ACME%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Perfect%2C+thanks%21%22%7D%5D%2C%22role%22%3A%22user%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

# Introduction

The **Look Up Salesforce Accounts** plugin enables teams to effortlessly retrieve detailed customer account information from Salesforce using the Moveworks AI Assistant. Instead of logging into Salesforce and manually navigating through the portal, users can now quickly access account data through a simple conversational query — streamlining workflows and improving productivity across sales, customer success, and support teams.

This guide will walk you through the simple installation process in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+is+the+Renewal+date+for+ACME%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Query+Salesforce+Accounts+API+endpoint%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+renewal+date+for+ACME+is+on+February+25%2C+2026%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22ACME%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Perfect%2C+thanks%21%22%7D%5D%2C%22role%22%3A%22user%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Salesforce first, prior to installing this plugin. Please follow the [Salesforce Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=salesforce) guide to create the connector.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### API #1: Salesforce SOQL Query API

An API for Salesforce to execute the specified SOQL Query. Here, our query would be related to the `Account` object. Sample SOQL Query API: Here is an example of a sample query API using a SOQL query on the Account object.

```bash
curl --location --globoff 'https://{{your-salesforce-instance}}.my.salesforce.com/services/data/v58.0/query?q=SELECT%20Name%2CType%2CDescription%2CId%2CWebsite%2COwner.Name%20FROM%20Account%20WHERE%20Name%20LIKE%20%27{{query}}%27' \
--header 'Authorization: Bearer {{generated_bearer_token}}'
```

**Query Parameters :**

- Key ( **q** ) : Value ( **{{SELECT Email,Name,Phone,Title FROM Contact WHERE Account.Name LIKE '%25Nutanix%25' ORDER BY CreatedDate DESC}}** )

The Query we used here is:

```bash
SELECT
 Name,
 Type,
 Description,
 Id,
 Website,
 Owner.Name
FROM
 Account
WHERE
 Name LIKE '%25{{query}}%25'
```

Use this Query to fetch all relevant details from your customer’s Salesforce account by replacing the `{{query}}` field with the name of the customer you’re trying to lookup for. The `%25` searches for the Account inside account names, instead of an exact keyword match (Example: matching Acme with "Acme Inc." and "Acme Semiconductors", instead of matching no results). 

In the above example, we have used only Standard Salesforce objects, however, you can also use the [Custom](https://help.salesforce.com/s/articleView?id=sf.basics_object_types.htm&type=5) objects that is defined in your Salesforce instance to build the Query. Custom objects can be identified by the trailing __c after their name. You can visit [https://workbench.developerforce.com](https://workbench.developerforce.com/) and explore the different fields present within the **Account** object. You can also try out different SOQL queries and use the one which you think is a best fit for the Use Case.