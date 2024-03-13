---
design_pattern_id: 28
name: Salesforce Opportunity Lookup
description: Lookup Opportunities for a customer in Salesforce with your bot
systems: [salesforce]
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A9100%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+am+trying+to+remeber+the+information+that+we+have+for+our+customer+TeleFellas+opportunity%2C+can+you+remind+me%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Query+Salesforce+Opportunity+API+endpoint%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Here+is+the+opportunity+information+in+Salesforce+for+this+account.%5Cn%5CnName+-+TelaFella%5CnAmount+-+%24450000%5CnSales+Stage+-+Closed%5CnClosed+Date+-+11%2F20%2F2020%5CnNext+Step+-+Reach+out+to+Rob%40telafella.com+for+upcoming+sales+cycle%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Perfect%2C+thanks%21%22%7D%5D%7D%7D%5D%7D
time_in_minutes: 5
difficulty_level: Beginner
---


# Introduction

Salesforce is a comprehensive tool for tracking every stage in a sale, from the initial lead to the closing of an Opportunity. However, accessing specific Opportunity details for a customer can be a time-consuming process, involving logging into Salesforce and navigating through various menus.

In this tutorial, we will guide you on how to make this process seamless and dynamic by creating a plugin on Creator Studio. You will learn how to extract detailed information about a customer's opportunity in Salesforce through a simple conversational query with your Moveworks' bot.

Let's get started!

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- Salesforce Connector built in Creator Studio (follow [our guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=salesforce))

# What are we building?

## Conversation Design

[This purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A9100%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+am+trying+to+remeber+the+information+that+we+have+for+our+customer+TeleFellas+opportunity%2C+can+you+remind+me%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Query+Salesforce+Opportunity+API+endpoint%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Here+is+the+opportunity+information+in+Salesforce+for+this+account.%5Cn%5CnName+-+TelaFella%5CnAmount+-+%24450000%5CnSales+Stage+-+Closed%5CnClosed+Date+-+11%2F20%2F2020%5CnNext+Step+-+Reach+out+to+Rob%40telafella.com+for+upcoming+sales+cycle%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Perfect%2C+thanks%21%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

## Creator Studio Components

- **Triggers:**
    1. Natural Language
- **Slots**:
    1. Name of the Salesforce Account
- **Actions:**
    1. Query Customer Opportunity details
- **Guidelines:**
    1. None

Based on the needs of this use case, we should build a [Lookup Single Record by ID / Keyword](https://developer.moveworks.com/creator-studio/design-patterns/dp-6/)**.**

## API Research

There’s only 1 API needed to build this use case

### API #1: Opportunity Lookups

Since we want to integrate with Salesforce, we should look into their SOQL Query APIs. For this use case, we will need only 1 API call.

![Untitled](Use%20Case%20Tutorial%20Salesforce%20Opportunity%20Lookup%207977b6d090824f7887ae39b731464e9c/Untitled.png)

1. [Salesforce SOQL Query API](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_query.htm): An API for Salesforce to execute the specified SOQL Query. Here, our query would be related to the `Opportunity` object
    1. Sample SOQL Query API: Here is an example of a sample query API using a SOQL query on the `Opportunity` object.

        ```bash
        curl --location 'https://{{your-salesforce-instance}}.my.salesforce.com/services/data/v58.0/query?q=SELECT%20Name%2CAmount%2CCloseDate%2CExpectedRevenue%2CIsWon%2CNextStep%2CStageName%2CType%2CAccountId%2CCreatedBy.Name%2CCreatedDate%2COwner.Name%2CRenewal_Manager__r.Name%20FROM%20Opportunity%20WHERE%20Name%20LIKE%20%27%25Dropbox%25%27%20ORDER%20BY%20CreatedDate%20DESC%20LIMIT%2010' \
        --header 'Authorization: Bearer {{generated_bearer_token}}'
        ```

        The Query we used here is:

        ```sql
        SELECT
         Name,
         Amount,
         CloseDate,
         ExpectedRevenue,
         IsWon,
         NextStep,
         StageName,
         Type,
         AccountId,
         CreatedBy.Name,
         CreatedDate,
         Owner.Name,
         Renewal_Manager__r.Name
        FROM
         Opportunity
        WHERE
         Name LIKE '%25{{query}}%25'
        ORDER BY
         CreatedDate DESC
        LIMIT
         10
        ```

        Use this Query to fetch all relevant details from your customer’s Salesforce opportunity by replacing the `{{query}}` field with the name of the customer you’re trying to lookup for. The `%25` searches for the Account inside account names, instead of an exact keyword match (Example: matching `Acme` with "Acme Inc." and "Acme Semiconductors", instead of matching no results.

> In the above example, we have used only Standard Salesforce objects, however, you can also use the [Custom](https://help.salesforce.com/s/articleView?id=sf.basics_object_types.htm&type=5) objects that is defined in your Salesforce instance to build the Query. Custom objects can be identified by the trailing `__c` after their name.
You can visit [`https://workbench.developerforce.com/`](https://workbench.developerforce.com/) and explore the different fields present within the `Opportunity` object. You can also try out different SOQL queries and use the one which you think is a best fit for the Use Case.
>
>
> ![Untitled](Use%20Case%20Tutorial%20Salesforce%20Opportunity%20Lookup%207977b6d090824f7887ae39b731464e9c/Untitled%201.png)
>

# Steps

## Step 1: Build in Creator Studio

### Setup use case

1. Start in the Queries Workspace and create a new query.
2. Provide the Basic Information so the Next Generation Copilot knows how to use this plugin:
    1. **Query Label**: `Lookup Customer Opportunity Details`
    2. **Short Description:** `Lookup information for a customer opportunity in Salesforce`

### Setup the API

1. Select the Salesforce connector that you set up earlier in the Authentication Guide

    ![Untitled](Use%20Case%20Tutorial%20Salesforce%20Opportunity%20Lookup%207977b6d090824f7887ae39b731464e9c/Untitled%202.png)

1. Define your API action for querying the Opportunities data from Salesforce:
    - Path: `/services/data/v58.0/query`
    - Method: `GET`
    - Query parameters:

        | KEY | VALUE |
        | --- | --- |
        | q | SELECT Name, Amount, CloseDate, ExpectedRevenue, IsWon, NextStep, StageName, Type, AccountId, CreatedBy.Name, CreatedDate, Owner.Name, Renewal_Manager__r.Name FROM Opportunity WHERE Name LIKE '%25{{query}}%25' ORDER BY CreatedDate DESC LIMIT 10 |
    - Provide an example value for the `{{query}}` field based on any customer account you know. If you don’t have any of your customer’s name handy, please check `Opportunity` section within your Salesforce instance to get the exact name of any of the customer accounts present there. For example:

        ![Untitled](Use%20Case%20Tutorial%20Salesforce%20Opportunity%20Lookup%207977b6d090824f7887ae39b731464e9c/Untitled%203.png)

1. Test your setup in Creator Studio and look for a successful execution. A 200 Response Code represents that the API call was successfully executed.

    ![Untitled](Use%20Case%20Tutorial%20Salesforce%20Opportunity%20Lookup%207977b6d090824f7887ae39b731464e9c/Untitled%204.png)

### Label the API Response

1. Select the `Name` as the Identifier.
2. Select any of the fields as the Description. In this example, we have selected `Description` as the Description.
3. From among the Additional Fields, select the fields that you want users to query on and label them accordingly. For example, the field `StageName` contains the stage of the deal at which the customer opportunity is in currently and we want the bot to pick the Deal name up and map it to this field. Therefore, the Label should be something like - `Deal Stage`

    ![Untitled](Use%20Case%20Tutorial%20Salesforce%20Opportunity%20Lookup%207977b6d090824f7887ae39b731464e9c/Untitled%205.png)

4. No follow-up action needed.

### Setup your Generative Intent

1. Since we want to capture the name of the customer from the utterance, which is further used to filter the SOQL Query, we will need to utilize smart extraction on the natural language slot. To do this, we need to provide the name of the customer that will be present in the `User utterance example` field in the `Keyword` field as well for every example.

    ![Untitled](Use%20Case%20Tutorial%20Salesforce%20Opportunity%20Lookup%207977b6d090824f7887ae39b731464e9c/Untitled%206.png)

We want to provide different kinds of utterances here based on the Opportunity Lookup use case and the various fields present within the Opportunity object within your Salesforce instance. Here are some examples you can use:

1. What is the deal stage for ACME?
2. What is the deal type for the Teamboost opportunity?
3. What is the amount of the ACME opportunity?
4. What is the date closed for the ChatBoost opportunity?

### Launch the use case

Use our [Launch Rules](https://developer.moveworks.com/creator-studio/launch-options/) to launch your use case to your Copilot.

## Step 2: See it in action

Trigger the use case by asking for it from your Copilot. Find interesting ways to combine it with your own enterprise data.

Note: It could take a couple minutes before your flow shows up in your copilot. If it doesn’t show up after five minutes, follow [our troubleshooting guides](https://developer.moveworks.com/creator-studio/troubleshooting/support) to further debug.

# Congratulations

You just added Salesforce Opportunity Lookups to your Copilot! Check out our other guides for inspiration on what to build next.
