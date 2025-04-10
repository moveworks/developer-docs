---
accreditations:
- indrapaul24
- DEFAULT
description: A plugin that allows employees to access and review their own expense
  reports and relative statuses.
design_pattern_id: 28
difficulty_level: BEGINNER
drop_accreditations:
- ajaymerchia
fidelity: TEMPLATE
installation_asset_uuid: 64f1c79a-e58b-43d2-aa95-f6e38cbb8425
installation_link: https://my.moveworks.com/agent-studio/plugin-workspace/plugins?externalAssetId=64f1c79a-e58b-43d2-aa95-f6e38cbb8425
name: Look up Expense Reports
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A4760%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Afalse%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Show+me+my+expense+reports%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Running+Creator+Studio+plugin+to+retrieve+Expense+Reports+from+Concur%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22You+have+two+expense+reports%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22New+test+report%22%2C%22text%22%3A%22Submitted+%26+Pending+Approval%3Cbr%3E%3Cb%3ETotal+Claimed+Amount%3A%3C%2Fb%3E+%2460.00%3Cbr%3EStatus%3A+%3Ci%3ECurrently+not+paid%3C%2Fi%3E%22%7D%2C%7B%22title%22%3A%22Internet+Reimbursement%22%2C%22text%22%3A%22Not+submitted%3Cbr%3E%3Cb%3ETotal+Claimed+Amount%3A%3C%2Fb%3E+%2425.00%3Cbr%3EStatus%3A+%3Ci%3ENot+paid%3C%2Fi%3E%22%7D%5D%7D%5D%7D%7D%5D%7D
redirects:
- concur-expense-report-lookup
solution_tags:
- Approvals
- Finance
systems:
- sap-concur
time_in_minutes: 15
---

# Introduction

SAP Concur is a widely used platform for managing travel and expense reports in many organizations. While navigating through the Concur platform to access expense reports can be time-consuming, integrating it with your bot streamlines the process, allowing you to access your expense reports conveniently through simple conversational queries.

In this guide, we'll walk you through the process of integrating Concur Expense Reports lookup functionality into your bot using Creator Studio.

Let's get started!

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- Concur Connector built in Creator Studio (follow the [Concur Authentication](../../connectors/sap-concur/README.md) guide to create your connector)

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
>To check which Email Address is configured for your Moveworks bot, follow the steps in [How to find your User Profile](https://help.moveworks.com/docs/control-centre-identity#how-to-find-your-user-profile) in Moveworks Setup and check if the value of the `Email Address` is the same as the one setup as the login username for your Concur instance.
>
>If you don't have access to Moveworks Setup, you can request to get access to it by discussing with your Customer Support team or raising a request in our [Community portal](https://community.moveworks.com/moveworks-setup-83).

> If the username that is setup in your Concur instance is not the same as your email address, then you would need to build a workflow to first fetch the username using the email address and then fetch the expense reports based on that username.

# Steps

## **Step 1: Build HTTP Action**

- Define your HTTP Actions for fetching all the expense reports :
    1. **Retrieve Expense Reports**
        - In Creator Studio, create a new Action.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to define a new action
                
                ![getGithubContentProxy.webp](View%20Expense%20Reports%2018a588d8909f80c886e7ec4de72f8217/getGithubContentProxy.webp)
                
        - Click on the `IMPORT CURL` option and paste the following cURL command:
             
           ```bash
             curl --location 'https://us2.api.concursolutions.com/api/v3.0/expense/reports?user={{user_email_address}}&limit=10' \
            --header 'Accept: application/json' \
            --header 'Authorization: Bearer {{generated_bearer_token}}'
            ```
            
        - Click on `Use Existing Connector` > select the [SAP Concur Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=sap-concur) that you just created > Click on `Apply`. This will populate the Base URL and the Authorization section of the API Editor.
        - **Query** **Parameters** :
            - Key ( user ) : Value ( **{{user.email_addr}}** )
                - This filter searches for expense reports that are associated with the user who queried the bot.

            - Key ( limit ) : Value ( **10** )
                    
                ![Screenshot 2025-02-03 at 12.40.30 PM.png](View%20Expense%20Reports%2018a588d8909f80c886e7ec4de72f8217/Screenshot_2025-02-03_at_12.40.30_PM.png)
                    
                
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.
            
            ![Screenshot 2025-01-29 at 2.30.58 PM.png](View%20Expense%20Reports%2018a588d8909f80c886e7ec4de72f8217/Screenshot_2025-01-29_at_2.30.58_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-01-29 at 2.34.05 PM.png](View%20Expense%20Reports%2018a588d8909f80c886e7ec4de72f8217/Screenshot_2025-01-29_at_2.34.05_PM.png)
            

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![Screenshot 2025-01-29 at 2.39.47 PM.png](View%20Expense%20Reports%2018a588d8909f80c886e7ec4de72f8217/Screenshot_2025-01-29_at_2.39.47_PM.png)
    
- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![Screenshot 2025-01-29 at 2.41.08 PM.png](View%20Expense%20Reports%2018a588d8909f80c886e7ec4de72f8217/Screenshot_2025-01-29_at_2.41.08_PM.png)
    
- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```bash
    steps:
      - action:
          action_name: fetch_all_expense_reports_for_a_user
          input_args:
            user_email: meta_info.user.email_addr
          output_key: fetch_all_expense_reports_for_a_user_result
      - script:
          output_key: expense_reports
          input_args:
            res: data.fetch_all_expense_reports_for_a_user_result
          code: |
            expense_reports = []
            for item in res["Items"]:
                    details = {
                        "Expense Report Name": item["Name"],
                        "Total Amount": f"${item['Total']:.2f}",
                        "Approval Status": item["ApprovalStatusName"],
                        "Date": item["SubmitDate"],
                        "ExpenseID": item["ID"]
                    }
                    expense_reports.append(details)
            return expense_reports
      - return:
          output_mapper:
            all_expense_reports: data.expense_reports
    ```
    
- Click the `Submit` button to save your changes.

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    
    ![Screenshot 2025-01-29 at 2.53.44 PM.png](View%20Expense%20Reports%2018a588d8909f80c886e7ec4de72f8217/Screenshot_2025-01-29_at_2.53.44_PM.png)
    
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2025-01-29 at 2.54.48 PM.png](View%20Expense%20Reports%2018a588d8909f80c886e7ec4de72f8217/Screenshot_2025-01-29_at_2.54.48_PM.png)
    
- Click `Next` and set up your positive and negative triggering examples. This ensures that the bot triggers your plugin given a relevant utterance.
    - See our [guide](https://developer.moveworks.com/creator-studio/conversation-design/triggers/natural-language-triggers/#how-to-write-good-triggering-examples) on Triggering
- Lastly, click `Next` and set the **Launch Rules** you want your plugin to abide by.
    - See our [guide](https://developer.moveworks.com/creator-studio/administration/launch-options/) on Launch Rules

## **Step 4: See it in action!**

- After clicking the final `Submit` button, your plugin will be published to the bot and triggerable based on your **Launch Rules.**
- You should wait up to **5 minutes** after making changes before trying to test in your bot!
- If you run into an issue:
    1. Check our [troubleshooting guides](https://developer.moveworks.com/creator-studio/troubleshooting/support/)
    2. Understand your issue using Logs
    3. Reach out to Support

# Congratulations!

You just added Concur Expense Report lookup to your Copilot! Check out our other guides for inspiration on what to build next.