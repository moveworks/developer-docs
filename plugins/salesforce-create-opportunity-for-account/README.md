---
availability: INSTALLABLE
description: A plugin that creates a new sales opportunity for an account in Salesforce.
installation_asset_uuid: fd81a046-b0e8-46bc-8dea-648ad29d974f
name: Create a New Sales Opportunity for an Account
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+create+a+new+sales+opportunity+for+an+account.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%2C+I+can+help+with+that.+What+is+the+account+name%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Acme+Corp%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Got+it.+What%27s+the+name+of+the+opportunity%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Q1+Enterprise+Deal%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EUnderstood.+What+stage+should+I+set+the+opportunity+to%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThe+stage+should+be+set+as+Introduction.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I%27ll+create+a+new+opportunity+with+the+given+details.%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EPlease+confirm+the+opportunity+details%3C%2Fstrong%3E%3Cbr%3E%5Cn%3Cstrong%3EAccount+Name%3A+%3C%2Fstrong%3EAcme+Corp%3Cbr%3E%5Cn%3Cstrong%3EOpportunity+Name%3A+%3C%2Fstrong%3EQ1+Enterprise+Deal%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EOpportunity+Stage%3A+%3C%2Fstrong%3EIntroduction%3Cbr%3E%5Cn%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Create+Opportunity+in+Salesforce%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+opportunity+in+Salesforce...%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Opportunity+Created%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Q1+Enterprise+Deal%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

# **Introduction :**

The “**Create Opportunity For Account”** plugin enables users to quickly create new Opportunities in Salesforce that are directly linked to a specific Account, all through the Moveworks AI Assistant. With this plugin, users can efficiently add sales opportunities, helping to streamline pipeline management and accelerate sales processes.

This guide will help you install and configure the plugin in Agent Studio within minutes.

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6518%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+need+to+create+a+new+sales+opportunity+for+an+account.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22I+can+help+you+create+a+new+sales+opportunity+for+an+account.+Could+you+please+provide+the+following+details%3A+1.+Name+of+the+account+2.+Close+date+for+the+opportunity+3.+Name+of+the+opportunity+4.+Stage+name+of+the+opportunity%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22account+name+%3A+Royal+Enfield%2C+++++++++++++++++++++++++++close+date+%3A+30th+january+2025%2C+++++++++++++++++++opportunity+name+%3A+Furniture++++++++++++++stagename+%3A+Propose%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22The+new+sales+opportunity+for+the+Royal+Enfield+account+has+been+successfully+created+with+the+following+details%3A+++++++++++++++++++++++++++++++-+Opportunity+Name%3A+Furniture+++++++++++++++++++++++++++++++++++++++++-+Close+Date%3A+January+30%2C+2025+++++++++++++++++++++++++++++++++++++++-+Stage+Name%3A+Propose%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**Salesforce Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Salesforce integration user has the following permissions:

- `Read` access to the **Account** object
- `Read` and `Create` access to the **Opportunity** object

After configuring the connector, refer to our **[plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation)** for more details on completing the setup!

# **Appendix**

## API #1: Fetch Account ID from Account Name

The [**Retrieve Account ID by Account Name**](https://developer.salesforce.com/docs/industries/cme/guide/comms-get-account-details.html) API retrieves a account id by account name.

```bash
curl --request GET \
--location 'https://<YOUR_DOMAIN>/services/data/v58.0/query?q=SELECT+Id+FROM+Account+WHERE+Name+LIKE+%27%25<ACCOUNT_NAME>%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
--header 'Accept: application/json' \
```

**Query Parameters :**

- `ACCOUNT_NAME`(string) – The name of the account to retrieve account id.

## API #2: **Create Opportunity for Account**

The [**Create Opportunity for Account**](https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_opportunity.htm) API is used to create a new Opportunity associated with a specific Account.

```bash
curl --request PATCH \
--location 'https://<YOUR_DOMAIN>/services/data/v58.0/sobjects/Opportunity' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "AccountId": "<ACCOUNT_ID>",
    "Name": "<NAME>",
    "StageName": "<STAGE_NAME>",
    "CloseDate": "<CLOSE_DATE>",
    "Amount": "<AMOUNT>"
}'

```

**Request Body Fields:**

- `ACCOUNT_ID`  (string) – The unique identifier of the Account to which the Opportunity will be associated.
- `NAME` (string) – The name of the opportunity.
- `CLOSE_DATE`  (string) – The expected close date of the opportunity
- `STAGENAME` (string) –  The current sales stage of the Opportunity.
- `AMOUNT`  (string) – The estimated revenue amount for the Opportunity.