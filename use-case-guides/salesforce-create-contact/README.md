---
name: Create a Contact in Salesforce
description: Create a Contact for a Customer Account in Salesforce
design_pattern_id: 20
systems: [salesforce]
difficulty_level: Intermediate
time_in_minutes: 15
---


# Introduction

Salesforce's comprehensive database allows you to maintain detailed records about your customer contacts, linked with their respective accounts. When you have a new point of contact for a customer, you add their communication details to the Contact object for that Account.

In this tutorial, we will guide you on how to create a plugin using Creator Studio that streamlines this process. You'll learn how to quickly create and assign new contacts to specific customer accounts in Salesforce through a simple conversational command with your Moveworks bot, bypassing the conventional interface steps.

Let’s get started

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- Salesforce Connector built in Creator Studio (follow [our guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=salesforce))

# What are we building?

## Workflow Design Pattern

### A1: Sequential Action Chaining

**Workflow Design:**

![Untitled](Use%20Case%20Tutorial%20Create%20a%20Contact%20for%20an%20Account%20%20d6b9136558d8499f9da07ae18283ba55/Untitled.png)

**Capabilities:**

**Inputs:**

- Slots passed from Path/Query API config

**Triggering:**

- User triggered

**Actions:**

- API Calls

**Connector Support:**

- Cloud Connectors

**Caveats:**

Given a User Email (Slot Input),
Look up the user's Workday ID (API 1),
Then use that Workday ID to submit that user's Timesheet

**Capabilities:**

**Inputs:**

- Slots passed from Path/Query API config

**Triggering:**

- User triggered

**Actions:**

- API Calls

**Connector Support:**

- Cloud Connectors

**Caveats:**

## Creator Studio Components

- **Triggers:**

1. Natural Language

- **Slots**:

1. User-supplied information regarding customer name and contact details (like name, email etc)

- **Actions:**

1. Create a new Contact record for the customer Account

- **Guidelines:**

1. None

## API Research

Since we want to integrate with Salesforce lookup, we should look into their SOQL Query APIs and the sObjects Rest APIs. For this use case, we will need 2 sequential API calls.

### API #1: Lookup Account ID

For the given customer name, we need to lookup the corresponding Account ID from Salesforce

1. [Salesforce SOQL Query API](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_query.htm): An API for Salesforce to execute the specified SOQL Query. Here, our query would be related to the `Account` object
    1. Sample SOQL Query API: Here is an example of a sample query API using a SOQL query on the `Account` object.

        ```bash
        curl --location 'https://{{your-salesforce-instance}}.my.salesforce.com/services/data/v58.0/query?q=SELECT%20Id%2CName%20FROM%20Account%20WHERE%20Name%20LIKE%20%27%25{{query}}%25%27%20LIMIT%201' \
        --header 'Authorization: Bearer {{generated_bearer_token}}'
        ```

        The Query we used here is:

        ```sql
        SELECT
         Id,
         Name
        FROM
         Account
        WHERE
         Name LIKE '%25{{query}}%25'
        LIMIT
         1
        ```

        Use this Query to fetch ID of your customer’s Salesforce Account by replacing the `{{query}}` field with the name of the customer you’re trying to lookup for. The `%25` searches for the Account inside account names, instead of an exact keyword match (Example: matching `Acme` with "Acme Inc." and "Acme Semiconductors", instead of matching no results.

### API #2: Create a Contact

For the looked up Account ID and the given contact details, we need to create a new Contact in Salesforce.

1. [Salesforce sObjects Rest API](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_sobject_basic_info_post.htm): An API for creating a new record for a specified object based on field values in the request body in Salesforce.
    1. Sample Create sObjects API: Here is an example of a sample Create sObjects API on the `Contact` object

        ```jsx
        curl --location 'https://{{your-salesforce-instance}}.my.salesforce.com/services/data/v58.0/sobjects/Contact' \
        --header 'Content-Type: application/json' \
        --header 'Authorization: Bearer {{generated_bearer_token}}' \
        --data-raw '{
            "FirstName": "Test", // From Slot Input
            "LastName": "User", // From Slot Input
            "Email": "test.user1@example.com", // From Slot Input
            "Phone": "+18275198612", // From Slot Input
            "AccountId": "0017A00000xsB3hQAE" // From Account ID Lookup
        }'
        ```

        Use this API to create a new contact for the given Account ID.

# Steps

# Complete after April 9, 2024

## Step 2: Build in Creator Studio

### Setup use case

1. Start in the Paths Workspace and create a new path
    1. {image of path}
2. Title your use case: “Reset Azure MFA Device” and provide a description that is easily digestible.

### Build the conversation design

1. When you first create a new path, you will be given a blank pallet to start from.

    ![Untitled](Use%20Case%20Tutorial%20Create%20a%20Contact%20for%20an%20Account%20%20d6b9136558d8499f9da07ae18283ba55/Untitled%201.png)

2. Clicking on the *Add a bot action* button will present you with several options, because the first thing we want to do is ask the user a question, we will choose that option.

    ![Untitled](Use%20Case%20Tutorial%20Create%20a%20Contact%20for%20an%20Account%20%20d6b9136558d8499f9da07ae18283ba55/Untitled%202.png)

3. Provide the question you want to ask and based on the number of options provided, the flow will be split to accommodate the choices

    ![Untitled](Use%20Case%20Tutorial%20Create%20a%20Contact%20for%20an%20Account%20%20d6b9136558d8499f9da07ae18283ba55/Untitled%203.png)

4. Once the branch is split, continue this process to build your conversation

    ![Untitled](Use%20Case%20Tutorial%20Create%20a%20Contact%20for%20an%20Account%20%20d6b9136558d8499f9da07ae18283ba55/Untitled%204.png)

    - If the user doesn’t want to reset all factors, leave the interaction blank for now. We’ll let IT decide if / how to handle partial resets.
    - If the user is okay with resetting all factors, then add the API action to delete all factors (step 3)
5. Execute your Azure function.
    - Connector: Follow our [Azure Functions guide](https://www.notion.so/Authentication-Guide-Azure-Function-Apps-7503f66bf6994df5b7bb481e05e82e9f?pvs=21).
    - Path: `/api/reset_all_devices`
    - Body:

        ```python
        {
         "email": "{{user.primary_email_address}}"
        }
        ```

### Build your generative intent & launch the use case

Build a [Generative Intent](https://developer.moveworks.com/creator-studio/paths/generative-intents/) and then use our [Launch Rules](https://developer.moveworks.com/creator-studio/launch-options/) to launch your use case to your Copilot.

## Step 3: See it in action

Trigger the use case by asking for it from your Copilot. Here’s a quick demo.

Note: It could take a couple minutes before your flow shows up in your copilot. If it doesn’t show up after five minutes, follow our troubleshooting guide to further debug.

# Congratulations

You just added Create Salesforce Contacts to your Copilot! Check out our other guides for inspiration on what to build next.
