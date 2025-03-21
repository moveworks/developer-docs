---
description: A plugin that enables employees to review all expense entries associated
  with a specific report.
difficulty_level: BEGINNER
fidelity: GUIDE
time_in_minutes: 30
name: View Expense Entries For Report
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Ecan+you+fetch+all+my+expense+entries+%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EHere+are+your+expense+reports%3A%3Cbr%3E%5Cn%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cp%3E%26nbsp%3B1.+%3Cstrong%3EClient+Meeting+in+New+York%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Date%3A+December+16%2C+2024%3Cbr%3E%5Cn%26nbsp%3B-+Total+Amount%3A+%24240.0%3Cbr%3E%5Cn%26nbsp%3B-+Approval+Status%3A+Submitted+%26amp%3B+Pending+Approval%3Cbr%3E%5Cn2.+%3Cstrong%3EConference+Trip+to+San+Francisco%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Date%3A+December+16%2C+2024%3Cbr%3E%5Cn%26nbsp%3B-+Total+Amount%3A+%2410.0%3Cbr%3E%5Cn%26nbsp%3B-+Approval+Status%3A+Submitted+%26amp%3B+Pending+Approval%3Cbr%3E%5Cn%3Cbr%3E%5Cn%3Cstrong%3EPlease+confirm+the+exact+report+name+you+are+looking+for+to+retrieve+all+expense+details.%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details+for+the+%3Cstrong%3EClient+Meeting+in+New+York%3C%2Fstrong%3E+expense+report%3A%3C%2Fp%3E%5Cn%3Cp%3E1.+%3Cstrong%3EHotel%3C%2Fstrong%3E%3Cbr%3E%5Cn+%26nbsp%3B-+Transaction+Amount%3A+%24100.0%3C%2Fp%3E%5Cn%3Cp%3E2.+%3Cstrong%3EBreakfast%3C%2Fstrong%3E%3Cbr%3E%5Cn+%26nbsp%3B-+Transaction+Amount%3A+%2470.0%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Finance
systems:
- sap-concur

# **Introduction**

SAP Concur is a leading platform for managing business expenses, travel and invoicing. The **View Expense Entries For Report** plugin simplifies retrieving all expense entries associated with a specific report, allowing employees to efficiently review and validate their expenses.

Integrating this feature with your bot enables seamless access to expense details through conversational queries, streamlining the expense review process.

This guide walks you through adding the **View Expense Entries For Report** feature to your bot using Creator Studio.

Let's get started!

## Prerequisites

- SAP Concur Connector built in Creator Studio (follow the [SAP Concur Authentication guide](https://developer.moveworks.com/creator-studio/resources/connector?id=sap-concur) to create your connector)
- The  Look up Expense Reports plugin built in Creator Studio. It retrieves all reports related to a user who queried the bot. Refer to the [Look up Expense Reports](https://developer.moveworks.com/creator-studio/resources/plugin?id=sap-concur-expense-report-lookup) guide for setup instructions.

## What are we building?

### Conversation Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Ecan+you+fetch+all+my+expense+entries+%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EHere+are+your+expense+reports%3A%3Cbr%3E%5Cn%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cp%3E%26nbsp%3B1.+%3Cstrong%3EClient+Meeting+in+New+York%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Date%3A+December+16%2C+2024%3Cbr%3E%5Cn%26nbsp%3B-+Total+Amount%3A+%24240.0%3Cbr%3E%5Cn%26nbsp%3B-+Approval+Status%3A+Submitted+%26amp%3B+Pending+Approval%3Cbr%3E%5Cn2.+%3Cstrong%3EConference+Trip+to+San+Francisco%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Date%3A+December+16%2C+2024%3Cbr%3E%5Cn%26nbsp%3B-+Total+Amount%3A+%2410.0%3Cbr%3E%5Cn%26nbsp%3B-+Approval+Status%3A+Submitted+%26amp%3B+Pending+Approval%3Cbr%3E%5Cn%3Cbr%3E%5Cn%3Cstrong%3EPlease+confirm+the+exact+report+name+you+are+looking+for+to+retrieve+all+expense+details.%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details+for+the+%3Cstrong%3EClient+Meeting+in+New+York%3C%2Fstrong%3E+expense+report%3A%3C%2Fp%3E%5Cn%3Cp%3E1.+%3Cstrong%3EHotel%3C%2Fstrong%3E%3Cbr%3E%5Cn+%26nbsp%3B-+Transaction+Amount%3A+%24100.0%3C%2Fp%3E%5Cn%3Cp%3E2.+%3Cstrong%3EBreakfast%3C%2Fstrong%3E%3Cbr%3E%5Cn+%26nbsp%3B-+Transaction+Amount%3A+%2470.0%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# Creator Studio Components

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Fetch user email
    2. Fetch report ID
- **Actions**:
    1. **Retrieve All Expense Entries**
        - Retrieves a list of expenses of a specific report from the SAP Concur Expense system.
- **Guidelines:**
    1. Add a guideline to ensure that this plugin executes only when **Look up Expense Reports** plugin has executed and always ask the user for specific expense report instead of making any assumptions.
    2. Add a guideline to ensure that this plugin always retrieves the report id directly from the response of the **Look up Expense Reports** plugin, rather than relying on a sample values or making assumptions.

# **API Research**

To efficiently build the use case for fetching all expenses for a specific report, we utilize a single API and the  **Look up Expense Reports** plugin.

![sap concur.png](View%20Expense%20Entries%20For%20Report%20f9f9994b2afd4ea199c3dfd0e32e69a3/36bedffd-b88a-4c52-81b4-01dd310beefd.png)

## **API #1: Retrieve All Expense Entries**

The [**Retrieve All Expense Entries**](https://developer.concur.com/api-reference/expense/expense-report/expense-entry.html) API enables you to retrieve available expenses for a specific expense report. You need the expense report Id, which can be fetched from the '**Look up Expense Reports**' plugin response.

```bash
curl --request GET \
  --url 'https://your-domain.com/api/v3.0/expense/entries' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

# **Steps**

## **Step 1: Build HTTP Action**

- Define your HTTP Actions for fetching all the expense details of a specific expense report :
    1. **Fetch expense entries**
        - In Creator Studio, create a new Action.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to define a new action
                
                ![getGithubContentProxy.webp](View%20Expense%20Entries%20For%20Report%20f9f9994b2afd4ea199c3dfd0e32e69a3/getGithubContentProxy.webp)
                
- Click on the `IMPORT CURL` option and paste the following cURL command:
    
    ```bash
    curl --request GET \
      --url 'https://your-domain.com/api/v3.0/expense/entries?user={{user.email_addr}}&reportID={{report_id}}
      --user 'email@example.com:<api_token>' \
      --header 'Accept: application/json'
    ```
    
- Click on `Use Existing Connector` > select the [SAP Concur connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-concur) that you just created > Click on `Apply`. This will populate the Base URL and the Authorization section of the API Editor.
- **Query** **Parameters** :
    - Key ( user ) : Value ( **{{user.email_addr}}** )
        - This filter searches for expense reports that are associated with the user who queried the bot.
    - Key ( reportID ) : Value ( **{{report_id}}** )
        - This filter fetches the expense details associated with a specific report ID.
            
            ![Screenshot 2025-02-05 at 8.05.55 PM.png](View%20Expense%20Entries%20For%20Report%20f9f9994b2afd4ea199c3dfd0e32e69a3/Screenshot_2025-02-05_at_8.05.55_PM.png)
            
- **Input Variables** :
    - report_id : Example Value ( 2DB1C729E0154C219285 )
        
        ![Screenshot 2025-02-05 at 8.06.30 PM.png](View%20Expense%20Entries%20For%20Report%20f9f9994b2afd4ea199c3dfd0e32e69a3/Screenshot_2025-02-05_at_8.06.30_PM.png)
        
- Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.
    
    ![Screenshot 2025-01-29 at 4.43.34 PM.png](View%20Expense%20Entries%20For%20Report%20f9f9994b2afd4ea199c3dfd0e32e69a3/Screenshot_2025-01-29_at_4.43.34_PM.png)
    
- Add the **API Name** and **API Description** as shown below, then click the `Save` button
    
    ![Screenshot 2025-01-29 at 4.45.47 PM.png](View%20Expense%20Entries%20For%20Report%20f9f9994b2afd4ea199c3dfd0e32e69a3/Screenshot_2025-01-29_at_4.45.47_PM.png)
    

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![Screenshot 2025-01-29 at 2.39.47 PM.png](View%20Expense%20Entries%20For%20Report%20f9f9994b2afd4ea199c3dfd0e32e69a3/Screenshot_2025-01-29_at_2.39.47_PM.png)
    
- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![Screenshot 2025-01-29 at 4.48.41 PM.png](View%20Expense%20Entries%20For%20Report%20f9f9994b2afd4ea199c3dfd0e32e69a3/Screenshot_2025-01-29_at_4.48.41_PM.png)
    
- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```bash
    steps:
      - action:
          action_name: fetch_all_expense_entries_of_a_specific_report
          input_args:
            user_email: meta_info.user.email_addr
            report_id: data.report_id
          output_key: fetch_all_expense_entries_of_a_specific_report_result
      - script:
          output_key: expense_report_entries
          input_args:
            res: data.fetch_all_expense_entries_of_a_specific_report_result
          code: |
            expense_report_entries = []
            for item in res.get("Items", []):
              details = {
                "ExpenseID": item.get("ExpenseID"),
                "ID": item.get("ID"),
                "ExpenseTypeName": item.get("ExpenseTypeName"),
                "TransactionAmount": item.get("TransactionAmount"),
                "TransactionDate": item.get("TransactionDate"),
                "ExchangeRate": item.get("ExchangeRate")
                }
              expense_report_entries.append(details)
            expense_report_entries
      - return:
          output_mapper:
            all_expense_entries: data.expense_report_entries
    ```
    
- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.
    - Make sure to follow the guidelines when setting the Description in this case, as it will instruct the bot to always retrieves the report id directly from the response of the **Look up Expense Reports** plugin
    - Sample description :
        - report_id : Represent the results from the fetch_all_expense_reports_for_a_user plugin. The user confirms the report name. After that, fetch the report_id of the specific report selected by the user from the response of the fetch_all_expense_reports_for_a_user plugin call and use that report id value for report_id
        - Replace <fetch_all_expense_reports_for_a_user> with the name of your Look up Expense Reports plugin.
            
            ![Screenshot 2025-01-29 at 4.51.29 PM.png](View%20Expense%20Entries%20For%20Report%20f9f9994b2afd4ea199c3dfd0e32e69a3/Screenshot_2025-01-29_at_4.51.29_PM.png)
            

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    - Make sure to follow the guidelines when setting the **Short Description** in this case, as it will instruct the bot to always execute the  **Look up Expense Reports** plugin before this plugin.
    - Sample **Short description** : Retrieves all expense entry information for the specific report selected by the user. You MUST ALWAYS run the 'fetch_expense_reports_for_a_user' plugin beforehand and display the results. First, ask the user to confirm the exact report name they are looking for. Then, retrieve and display all expense details for the selected report.
    - Replace <fetch_expense_reports_for_a_user> with the name of your  **Look up Expense Reports** plugin.
        
        ![Screenshot 2025-01-29 at 4.56.52 PM.png](View%20Expense%20Entries%20For%20Report%20f9f9994b2afd4ea199c3dfd0e32e69a3/Screenshot_2025-01-29_at_4.56.52_PM.png)
        
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2025-01-29 at 4.57.55 PM.png](View%20Expense%20Entries%20For%20Report%20f9f9994b2afd4ea199c3dfd0e32e69a3/Screenshot_2025-01-29_at_4.57.55_PM.png)
    
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

# **Congratulations!**

You've just added the SAP Concur "**View Expense Entries For Report**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.