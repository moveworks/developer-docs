# Use Case Tutorial: Salesforce Contact Lookup

Last edited time: March 13, 2024 7:45 PM
Workspace: Queries
Technologies: Salesforce
Status: In progress
Assigned To: Indrashis Paul
Review Date: March 11, 2024

### Subtitle

<aside>
✨ Query Salesforce Contact object details with your bot

</aside>

# Introduction

Salesforce efficiently maintains detailed data about all your customer contacts, but retrieving specific contact-associated details can sometimes turn into a time-intensive task. It typically involves logging into the Salesforce portal and navigating through various layers to locate the desired contact.

In this tutorial, we'll guide you on building a Creator Studio plugin that drastically simplifies this process. You'll learn to quickly fetch contact-related specifics, such as associated account, contact email, phone, and role, straight from Salesforce via a straightforward conversational query with your Moveworks bot.

Let's get started!

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- Salesforce Connector built in Creator Studio

# What are we building?

## Conversation Design

[This purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A3521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+want+to+send+an+email+to+our+contacts+at+Beta+Co.+Can+you+show+me+a+few+contacts+and+their+emails%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Query+Salesforce+Contacts+API+endpoint%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Here+are+some+contacts+at+Nutanix+that+you+can+reach+out+to%3A%5Cn1.+Jane+Doe%2C+IT%2C+Email%3A+jane.doe%40beta-co.com%5Cn2.+John+Doe%2C+Email%3A+john.doe%40beta-co.com%5Cn3.+Foo+Bar%2C+Analyst%2C+Email%3A+foo.bar%40beta-co.com%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Great%2C+thanks%21%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

## Creator Studio Components

- **Triggers:**
    1. Natural Language
- **Slots**:
    1. Name of the Salesforce Account
- **Actions:**
    1. Query Customer Account details
- **Guidelines:**
    1. None

Based on the needs of this use case, we should build a [Lookup Single Record by ID / Keyword](https://developer.moveworks.com/creator-studio/design-patterns/dp-6/)**.**

## API Research

There’s only 1 API needed to build this use case

### API #1: Contact Lookups

Since we want to integrate with Salesforce, we should look into their SOQL Query APIs. For this use case, we will need only 1 API call.

![Untitled](Use%20Case%20Tutorial%20Salesforce%20Contact%20Lookup%20e03b69ccf6704b848dd2d5cce6953d37/Untitled.png)

1. [Salesforce SOQL Query API](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_query.htm): An API for Salesforce to execute the specified SOQL Query. Here, our query would be related to the `Contact` object
    1. Sample SOQL Query API: Here is an example of a sample query API using a SOQL query on the `Contact` object.
        
        ```bash
        curl --location 'https://{{your-salesforce-instance}}.my.salesforce.com/services/data/v58.0/query?q=SELECT%20Email%2CName%2CPhone%2CTitle%20FROM%20Contact%20WHERE%20Account.Name%20LIKE%20%27%25Nutanix%25%27%20ORDER%20BY%20CreatedDate%20DESC' \
        --header 'Authorization: Bearer {{generated_bearer_token}}'
        ```
        
        The Query we used here is:
        
        ```sql
        SELECT 
        	Email,
        	Name,
        	Phone,
        	Title 
        FROM 
        	Contact 
        WHERE 
        	Account.Name LIKE '%25{{query}}%25' 
        ORDER BY 
        	CreatedDate DESC
        LIMIT
        	10
        ```
        
        Use this Query to fetch all relevant details from your customer’s Salesforce account by replacing the `{{query}}` field with the name of the customer you’re trying to lookup for. The `%25` searches for the Account inside account names, instead of an exact keyword match (Example: matching `Acme` with "Acme Inc." and "Acme Semiconductors", instead of matching no results.
        

> In the above example, we have used only Standard Salesforce objects, however, you can also use the [Custom](https://help.salesforce.com/s/articleView?id=sf.basics_object_types.htm&type=5) objects that is defined in your Salesforce instance to build the Query. Custom objects can be identified by the trailing `__c` after their name. 
You can visit [`https://workbench.developerforce.com/`](https://workbench.developerforce.com/) and explore the different fields present within the `Contact` object. You can also try out different SOQL queries and use the one which you think is a best fit for the Use Case.
> 
> 
> ![Untitled](Use%20Case%20Tutorial%20Salesforce%20Contact%20Lookup%20e03b69ccf6704b848dd2d5cce6953d37/Untitled%201.png)
> 

# Steps

## Step 1: Build in Creator Studio

### Setup use case

1. Start in the Queries Workspace and create a new query.
2. Provide the Basic Info so the Next Gen Copilot knows how to use this plugin:
    1. **Query Label**: `Lookup Salesforce Contacts Details` 
    2. **Short Description:** `Lookup contacts details of customer accounts from Salesforce`

### Build your generative intent & launch the use case

Build a [Generative Intent](https://developer.moveworks.com/creator-studio/paths/generative-intents/) and then use our [Launch Rules](https://developer.moveworks.com/creator-studio/launch-options/) to launch your use case to your Copilot. 

## Step 3: See it in action!

Trigger the use case by asking for it from your Copilot. Here’s a quick demo.

Note: It could take a couple minutes before your flow shows up in your copilot. If it doesn’t show up after five minutes, follow our troubleshooting guide to further debug.

# Congratulations!

You just added Salesforce Contact Lookups to your Copilot! Check out our other guides for inspiration on what to build next.