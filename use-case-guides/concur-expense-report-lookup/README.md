---
design_pattern_id: 28
name: Concur Expense Reports Lookup
description: Query your Expense Reports details from Concur within your bot
systems: [concur]
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A2617%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Show+me+my+expense+reports%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Running+Creator+Studio+plugin+to+retrieve+Expense+Reports+from+Concur%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22You+have+two+expense+reports%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22New+test+report%22%2C%22text%22%3A%22Submitted+%26+Pending+Approval%3Cbr%3E%3Cb%3ETotal+Claimed+Amount%3A%3C%2Fb%3E+%2460.00%3Cbr%3EStatus%3A+%3Ci%3ECurrently+not+paid%3C%2Fi%3E%22%7D%2C%7B%22title%22%3A%22Internet+Reimbursement%22%2C%22text%22%3A%22Not+submitted%3Cbr%3E%3Cb%3ETotal+Claimed+Amount%3A%3C%2Fb%3E+%2425.00%3Cbr%3EStatus%3A+%3Ci%3ENot+paid%3C%2Fi%3E%22%7D%5D%7D%5D%7D%7D%5D%7D
time_in_minutes: 15
difficulty_level: Beginner
---


# Introduction

SAP Concur is a widely used platform for managing travel and expense reports in many organizations. While navigating through the Concur platform to access expense reports can be time-consuming, integrating it with your bot streamlines the process, allowing you to access your expense reports conveniently through simple conversational queries.

In this guide, we'll walk you through the process of integrating Concur Expense Reports lookup functionality into your bot using Creator Studio.

Let's get started!

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- Concur Connector built in Creator Studio (follow the [Concur Authentication](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=concur) guide to create your connector)

# What are we building?

## Conversation Design

[This purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A2617%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Show+me+my+expense+reports%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Running+Creator+Studio+plugin+to+retrieve+Expense+Reports+from+Concur%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22You+have+two+expense+reports%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22New+test+report%22%2C%22text%22%3A%22Submitted+%26+Pending+Approval%3Cbr%3E%3Cb%3ETotal+Claimed+Amount%3A%3C%2Fb%3E+%2460.00%3Cbr%3EStatus%3A+%3Ci%3ECurrently+not+paid%3C%2Fi%3E%22%7D%2C%7B%22title%22%3A%22Internet+Reimbursement%22%2C%22text%22%3A%22Not+submitted%3Cbr%3E%3Cb%3ETotal+Claimed+Amount%3A%3C%2Fb%3E+%2425.00%3Cbr%3EStatus%3A+%3Ci%3ENot+paid%3C%2Fi%3E%22%7D%5D%7D%5D%7D%7D%5D%7D) shows the experience we are going to build. 

## Creator Studio Components

- **Triggers:**
    1. Natural Language
- **Slots**:
    1. None
- **Actions:**
    1. Query Concur Expense Reports for the User
- **Guidelines:**
    1. None

Based on the needs of this use case, we should build a [Lookup Single Record by ID / Keyword](https://developer.moveworks.com/creator-studio/design-patterns/dp-6/)**.**

## API Research

There’s only 1 API needed to build this use case

### API #1: Expense Report Lookups

Since we want to integrate with Concur Expense, we should look into their [Expense v3 APIs](https://developer.concur.com/api-reference/expense/expense-report/v3.reports.html). For this use case, we will need only 1 API call.

![Untitled](Use%20Case%20Tutorial%20Lookup%20Expense%20Reports%20in%20Concur%200ad48c0ab26047b1bab45a82557a0bda/Untitled.png)

1. [Expense v3 APIs](https://developer.concur.com/api-reference/expense/expense-report/v3.reports.html): An API for Concur to retrieve expense reports owned by the user.
    
    Here is the API we used to fetch 10 expense reports for the given user’s email address
    
    ```bash
    curl --location 'https://us2.api.concursolutions.com/api/v3.0/expense/reports?user={{user_email_address}}&limit=10' \
    --header 'Accept: application/json' \
    --header 'Authorization: Bearer {{generated_bearer_token}}'
    ```
    

> In the above API, we have used email address as the user identifier because during User setup in Concur the `Use Email as Username` checkbox was checked out.
> This is required for building this use case since we will be leveraging the User’s email address from the [User Attributes](https://developer.moveworks.com/creator-studio/reference/user-attributes/#user-attributes-reference) mapping in your Moveworks configuration. 
>
> ![Untitled](Use%20Case%20Tutorial%20Lookup%20Expense%20Reports%20in%20Concur%200ad48c0ab26047b1bab45a82557a0bda/Untitled%201.png)
> 
>To check which Email Address is configured for your Moveworks bot, follow the steps below in Moveworks Setup:
>
>1. Go over to Moveworks Setup (Gear icon at top right) -> Core Platform -> User Identity -> Ingested Users
>
>![Untitled](Use%20Case%20Tutorial%20Lookup%20Expense%20Reports%20in%20Concur%200ad48c0ab26047b1bab45a82557a0bda/image.png)
>
>2. Search for your name in the **Find Users** text box. Select your profile from the dropdown or click on **View Profile**.
>
>![alt text](Use%20Case%20Tutorial%20Lookup%20Expense%20Reports%20in%20Concur%200ad48c0ab26047b1bab45a82557a0bda/image2.png)
>
>3. In the Profile Page, look of the `Email Address` attribute and check the value.
>
>![alt text](Use%20Case%20Tutorial%20Lookup%20Expense%20Reports%20in%20Concur%200ad48c0ab26047b1bab45a82557a0bda/image3.png)
>
>
>This value should be the same as the one setup as the login username for your Concur instance.
>
>If you don't have access to Moveworks Setup, you can request to get access to it by discussing with your Customer Support team or raising a request in our [Community portal](https://community.moveworks.com/moveworks-setup-83).

> If the username that is setup in your Concur instance is not the same as your email address, then you would need to build a workflow to first fetch the username using the email address and then fetch the expense reports based on that username.

# Steps

## Step 1: Build in Creator Studio

### Setup use case

1. Start in the Queries Workspace and create a new query.
2. Provide the Basic Info so the Next Gen Copilot knows how to use this plugin:
    1. **Query Label**: `Lookup Expenses from Concur` 
    2. **Short Description:** `Lookup your Expense Reports from Concur. This includes looking up any information regarding the name, status, approver, total to be paid, and more.`

### Setup the API

1. Select the Concur connector that you set up earlier in the [Authentication Guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=concur)
    
    ![Untitled](Use%20Case%20Tutorial%20Lookup%20Expense%20Reports%20in%20Concur%200ad48c0ab26047b1bab45a82557a0bda/Untitled%202.png)
    
2. Define your API action for querying the Expense Reports data from Concur:
    - Path: `/api/v3.0/expense/reports`
    - Method: `GET`
    - Headers:
        
        
        | KEY | VALUE |
        | --- | --- |
        | Accept | application/json |
    - Query parameters:
        
        
        | KEY | VALUE |
        | --- | --- |
        | user | {{user.email_addr}} |
        | limit | 10 |
        - Selecting `user.email_addr` would ensure that the bot picks up the the email address that is currently mapped to the Bot for the user, and use that as the query parameter in the above API.
3. Test your setup in Creator Studio and look for a successful execution. A 200 Response Code represents that the API was successfully executed.
If you check the `OwnerLoginID` or `OwnerName` from the returned API response, you will see that it contains your Email ID and Name respectively. 
    
    ![Untitled](Use%20Case%20Tutorial%20Lookup%20Expense%20Reports%20in%20Concur%200ad48c0ab26047b1bab45a82557a0bda/Untitled%203.png)
    

### Label the API Response

1. Select the `Name` as the Identifier.
2. Select any of the fields as the Description. In this example, we have selected `Approval Status Name` as the Description.
3. From among the Additional Fields, select the fields that you want users to query on and label them accordingly.
    
    ![Untitled](Use%20Case%20Tutorial%20Lookup%20Expense%20Reports%20in%20Concur%200ad48c0ab26047b1bab45a82557a0bda/Untitled%204.png)
    
4. No follow-up action needed.

### Build your Generative Intent

1. Since we want to capture the email ID of the User who is using the Bot, which is further used to filter the Expense Reports API, we will need to provide accurate examples when to trigger this Use Case. Creator Studio will automatically generate utterances which will trigger the Use Case to execute the API and fetch details for your expense reports.
    
    ![Untitled](Use%20Case%20Tutorial%20Lookup%20Expense%20Reports%20in%20Concur%200ad48c0ab26047b1bab45a82557a0bda/image4.png)

    We want to provide different kinds of utterances here based on our Use Case. We want the bot to trigger the Expense Reports Use Case whenever a user asks anything related to their expense reports. Here are some examples you can use:
    - What are my expense reports?
    - Get me the status of my expense reports.
    - What are the approval statuses of my expense reports?
    - When were my expense reports created?
    

### Launch the use case

Use our [Launch Rules](https://developer.moveworks.com/creator-studio/launch-options/) to launch your use case to your Copilot. 

## Step 2: See it in action!

Trigger the use case by asking for it from your Copilot. Find interesting ways to combine it with your own enterprise data.

Note: It could take a couple minutes before your flow shows up in your copilot. If it doesn’t show up after five minutes, follow [our troubleshooting guides](https://developer.moveworks.com/creator-studio/troubleshooting/support) to further debug.

# Congratulations!

You just added Concur Expense Report lookup to your Copilot! Check out our other guides for inspiration on what to build next.