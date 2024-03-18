---
design_pattern_id: 2  # The ID of the associated design pattern
name: Salesforce Update Account Fields  # Name of the use case
description: Update a field in the Account Object in Salesforce  # Brief description of the use case
systems: [ salesforce ]  # List of systems involved in the use case
time_in_minutes: 15  # Time in minutes to complete the use case
difficulty_level: Intermediate  # Difficulty level: "Beginner", "Intermediate", or "Advanced"
---


# Introduction

Salesforce houses detailed records about your customer accounts, including various associated fields such as Account Owner. While Salesforce's interface provides a way to update these fields, this process needs manual navigation through Salesforce's interface.

This tutorial guides you on how to utilize Creator Studio to build a bot that transforms this process. You'll learn how to swiftly update fields, for example, the Account Owner, of a specific customer account in Salesforce via a simple conversational command with your Moveworks bot.

Let's get started!

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- Salesforce Connector built in Creator Studio

# What are we building?

## Workflow Design Pattern – A1

### A1: Sequential Action Chaining

**Workflow:**

![Untitled](Use%20Case%20Tutorial%20Update%20Salesforce%20Account%20Fields%206cb0dd04aabb40b48161d3623918a446/Untitled.png)

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
    1. User-supplied confirmation to reset all devices
- **Actions:**
    1. Reset all MFA devices for a user
- **Guidelines:**
    1. None

## API Research

Since we want to integrate with Salesforce, we should look into their SOQL Query APIs and the sObjects Rest APIs. For this use case, we will need 3 sequential API calls.

### API #1: Lookup Account ID

For the given customer name, we need to lookup the corresponding Account ID from Salesforce

1. [Salesforce SOQL Query API](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_query.htm): An API for Salesforce to execute the specified SOQL Query. Here, our query would be related to the `Account` object
    1. Sample SOQL Query API: Here is an example of a sample query API using a SOQL query on the `Account` object.

        ```bash
        curl --location 'https://{{your-salesforce-instance}}.my.salesforce.com/services/data/v58.0/query?q=SELECT%20Id%2CName%20FROM%20Account%20WHERE%20Name%20LIKE%20%27%25test%25%27%20LIMIT%201' \
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

### API #2: Lookup User ID

For the given user name, we need to lookup the corresponding User ID from Salesforce

1. [Salesforce SOQL Query API](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_query.htm): Here, our query would be related to the `User` object
    1. Sample SOQL Query API: Here is an example of a sample query API using a SOQL query on the `User` object.

        ```bash
        curl --location 'https://{{your-salesforce-instance}}.my.salesforce.com/services/data/v58.0/query?q=SELECT%20Id%2CName%20FROM%20User%20WHERE%20Name%20LIKE%20%27%25{query}%25%27' \
        --header 'Authorization: Bearer {{generated_bearer_token}}'
        ```

        The Query we used here is:

        ```sql
        SELECT
         Id,
         Name
        FROM
         User
        WHERE
         Name LIKE '%25{{query}}%25'
        LIMIT
         1
        ```

        Use this Query to fetch the ID of the desired User by replacing the `{{query}}` field with the name of the user you’re trying to lookup for.

### API #3: Update the Account Owner of an Account

For the looked up Account ID and the User ID, we need to update Account Owner in Salesforce.

1. [Salesforce sObjects Rows Rest API](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_sobject_retrieve_patch.htm): An API for updating a record for a specified object and a record ID based on field values in the request body in Salesforce.
    1. Sample Update sObjects API: Here is an example of a sample Update sObjects API on the `Account` object

        ```bash
        curl --location --request PATCH 'https://{{your-salesforce-instance}}.my.salesforce.com/services/data/v58.0/sobjects/Account/{{Account_ID}}' \
        --header 'Authorization: Bearer {{generated_bearer_token}}' \
        --header 'Content-Type: application/json' \
        --data '{
            "OwnerId": "{{User_ID}}"
        }'
        ```

        Use this API to update the Owner of the given Account ID.

# Steps

# Complete after April 9, 2024

### Build your generative intent & launch the use case

Build a [Generative Intent](https://developer.moveworks.com/creator-studio/paths/generative-intents/) and then use our [Launch Rules](https://developer.moveworks.com/creator-studio/launch-options/) to launch your use case to your Copilot.

## Step 3: See it in action

Trigger the use case by asking for it from your Copilot. Find interesting ways to combine it with your own enterprise data.

Note: It could take a couple minutes before your flow shows up in your copilot. If it doesn’t show up after five minutes, follow [our troubleshooting guides](https://developer.moveworks.com/creator-studio/troubleshooting/support) to further debug.

# Congratulations

You just added Update Salesforce Account Fields to your Copilot! Check out our other guides for inspiration on what to build next.
