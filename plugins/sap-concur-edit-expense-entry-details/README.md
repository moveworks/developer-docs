---
description: A plugin that offers the flexibility to modify details of existing expense
  entries to ensure accuracy.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: 20d78797-6e4d-442d-845b-cd279695b75c
installation_link: https://my.moveworks.com/agent-studio/plugin-workspace/plugins?externalAssetId=20d78797-6e4d-442d-845b-cd279695b75c
name: Edit Expense Entry Details
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+adjust+a+travel+expense+in+SAP+Concur.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details+of+the+expense+entries+for+travel+expense%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3ETravel+to+India+-+%24155%3C%2Fstrong%3E+%3Cbr%3E%5CnDate%3A+2024-12-04%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Select%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3ETravel+to+New+York+-+%24450%3C%2Fstrong%3E+%3Cbr%3E%5CnDate%3A+2024-11-12%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Select%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+which+specific+report+you+would+like+to+update%2C+and+I%27ll+retrieve+the+specific+expense+details+for+you.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ETravel+to+India%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EUpdate+regarding+Travel+to+India%3A%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3EHere+are+the+specific+%3Cstrong%3Eexpense+entries%3C%2Fstrong%3E+for+the+report%3A%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%5Cn1.+%3Cstrong%3EHotel%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Amount%3A+%24100.0%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Date%3A+January+31%2C+2025%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E2.+%3Cstrong%3EParking%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Amount%3A+%245.0%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Date%3A+December+12%2C+2024%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E3.+%3Cstrong%3EInternet%2FOnline+Fees%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Amount%3A+%2450.0%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Date%3A+December+12%2C+2024%3Cbr%3E%5Cn%3Cbr%3E%5CnPlease+confirm+which+specific+expense+entry+you+would+like+to+update%2C+and+provide+the+details+you+wish+to+change.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Eparking.+update+amount+to+7+USD%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EUpdate+regarding+Parking+expense+entry%3A+The+Parking+expense+amount+has+been+successfully+updated+to+%247.+If+you+need+any+further+assistance%2C+feel+free+to+ask%21%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Finance
systems:
- sap-concur
time_in_minutes: 40
video: https://www.loom.com/share/66c5a61f154d4b768b7e5be31514511b?sid=26f36307-1ebc-417f-8316-446e2fc6377f
---

# **Introduction**

SAP Concur is a leading platform for managing business expenses, travel and invoicing. The **Edit Expense Entry Details** plugin enables users to seamlessly update expense entries in unsubmitted reports, ensuring accuracy and up-to-date information.

By integrating this feature into your bot, you empower users to make necessary changes to their expense reports directly via conversational commands. This can include updating amounts, categories, dates or descriptions, streamlining the process for employees and ensuring compliance with company policies.

This guide will help you add the **Edit Expense Entry Details** functionality to your bot using Creator Studio.

Let's get started!

## Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- SAP Concur Connector built in Creator Studio (follow the [SAP Concur Authentication guide](https://developer.moveworks.com/creator-studio/resources/connector?id=sap-concur) to create your connector)
- The **Look up Expense Reports** and **View Expense Entries For Report** plugins are built in Creator Studio. These plugins allow users to retrieve all expense reports and their associated expense entries based on a query. For setup instructions, refer to the [**Look up Expense Reports**](https://developer.moveworks.com/creator-studio/resources/plugin?id=sap-concur-expense-report-lookup) and [**View Expense Entries For Report**](https://developer.moveworks.com/creator-studio/resources/plugin/?id=sap-concur-view-expense-report-entries) guides.

## What are we building?

### Conversation Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+adjust+a+travel+expense+in+SAP+Concur.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details+of+the+expense+entries+for+travel+expense%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3ETravel+to+India+-+%24155%3C%2Fstrong%3E+%3Cbr%3E%5CnDate%3A+2024-12-04%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Select%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3ETravel+to+New+York+-+%24450%3C%2Fstrong%3E+%3Cbr%3E%5CnDate%3A+2024-11-12%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Select%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+which+specific+report+you+would+like+to+update%2C+and+I%27ll+retrieve+the+specific+expense+details+for+you.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ETravel+to+India%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EUpdate+regarding+Travel+to+India%3A%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3EHere+are+the+specific+%3Cstrong%3Eexpense+entries%3C%2Fstrong%3E+for+the+report%3A%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%5Cn1.+%3Cstrong%3EHotel%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Amount%3A+%24100.0%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Date%3A+January+31%2C+2025%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E2.+%3Cstrong%3EParking%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Amount%3A+%245.0%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Date%3A+December+12%2C+2024%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E3.+%3Cstrong%3EInternet%2FOnline+Fees%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Amount%3A+%2450.0%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Date%3A+December+12%2C+2024%3Cbr%3E%5Cn%3Cbr%3E%5CnPlease+confirm+which+specific+expense+entry+you+would+like+to+update%2C+and+provide+the+details+you+wish+to+change.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Eparking.+update+amount+to+7+USD%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EUpdate+regarding+Parking+expense+entry%3A+The+Parking+expense+amount+has+been+successfully+updated+to+%247.+If+you+need+any+further+assistance%2C+feel+free+to+ask%21%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# Creator Studio Components

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Fetch user email
    2. Fetch expense ID
- **Actions**:
    1. **Updates an Expense Entry**
        - Updates the details of a specific expense in the SAP Concur Expense system.
- **Guidelines:**
    1. Add a guideline to ensure that this plugin executes only after the **View Expense Entries For Report** plugin has executed and always ask the user for a specific expense report and entry instead of making any assumptions.
    2. Add a guideline to ensure that this plugin always retrieves the **expense ID** and existing values (e.g., transaction date, amount, etc.) directly from the response of the **View Expense Entries For Report** plugin, rather than relying on a sample values or making assumptions.

# **API Research**

To efficiently build the use case for updating the expense details of a specific expense, we utilize a single API along with the **Look up Expense Reports** and **View Expense Entries For Report** plugins.

![edit expense entry.png](Edit%20Expense%20Entry%20Details%20fe7f2a58a2154da1b94d57cbc2091b29/edit_expense_entry.png)

## **API #1: Updates an Expense Entry**

The [Updates an Expense Entry](https://developer.concur.com/api-reference/expense/expense-report/expense-entry.html) API allows you to update the expense details of a specific expense. You need the expense id which can be retrieved from the **View Expense Entries For Report** plugin’s response.

```bash
curl --request PUT \
  --url 'https://your-domain.com/api/v3.0/expense/entries/{id}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

# **Steps**

## **Step 1: Build HTTP Action**

- Define your HTTP Actions for updating the expense details of a specific expense entry :
    1. **Search for Epic by Name**
        - In Creator Studio, create a new Action.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to define a new action
                
                ![getGithubContentProxy 1.webp](Edit%20Expense%20Entry%20Details%20fe7f2a58a2154da1b94d57cbc2091b29/getGithubContentProxy_1.webp)
                
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl --request PUT \
              --url 'https://your-domain.com/api/v3.0/expense/entries/{{expenseID}}?user={{user.email_addr}}
              --user 'email@example.com:<api_token>' \
              --header 'Accept: application/json' \
              --header 'Content-Type: application/json'
              --data '{
                "TransactionAmount": "{{TransactionAmount}}",
                "TransactionCurrencyCode": "{{TransactionCurrencyCode}}",
                "ExchangeRate": "{{ExchangeRate}}",
                "Description": "{{BusinessPurpose}}",
                "TransactionDate": "{{TransactionDate}}"
            }'
            ```
            
        - Click on `Use Existing Connector` > select the [SAP Concur connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-concur) that you just created > Click on `Apply`. This will populate the Base URL and the Authorization section of the API Editor.
        - **Query** **Parameters** :
            - Key ( user ) : Value ( **{{user.email_addr}}** )
                
                ![Screenshot 2025-02-06 at 11.16.53 AM.png](Edit%20Expense%20Entry%20Details%20fe7f2a58a2154da1b94d57cbc2091b29/Screenshot_2025-02-06_at_11.16.53_AM.png)
                
        - **Input Variables** :
            - BusinessPurpose : Example Value ( Office Supplies )
            - ExchangeRate : Example Value ( 1 )
            - TransactionAmount : Example Value ( 100 )
            - TransactionCurrencyCode : Example Value ( USD )
            - TransactionDate : Example Value ( 2025-01-31 )
            - expenseID : Example Value ( gWpVIJe4$pQZlPYsVLG3uDFLcQBZFJUw )
                
                ![Screenshot 2025-02-06 at 11.17.37 AM.png](Edit%20Expense%20Entry%20Details%20fe7f2a58a2154da1b94d57cbc2091b29/Screenshot_2025-02-06_at_11.17.37_AM.png)
                
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.
            
            ![Screenshot 2025-02-06 at 11.34.44 AM.png](Edit%20Expense%20Entry%20Details%20fe7f2a58a2154da1b94d57cbc2091b29/Screenshot_2025-02-06_at_11.34.44_AM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-02-06 at 11.19.43 AM.png](Edit%20Expense%20Entry%20Details%20fe7f2a58a2154da1b94d57cbc2091b29/Screenshot_2025-02-06_at_11.19.43_AM.png)
            

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![getGithubContentProxy_2.webp](Edit%20Expense%20Entry%20Details%20fe7f2a58a2154da1b94d57cbc2091b29/getGithubContentProxy_2.webp)
    
- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![Screenshot 2025-02-06 at 11.22.55 AM.png](Edit%20Expense%20Entry%20Details%20fe7f2a58a2154da1b94d57cbc2091b29/Screenshot_2025-02-06_at_11.22.55_AM.png)
    
- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```bash
    steps:
      - action:
          output_key: edit_expense_entry_details_result
          action_name: edit_expense_entry_details
          progress_updates:
            on_complete: Updated the expense entry with requested details
            on_pending: Updating the specified expense entry
          input_args:
            user_email: meta_info.user.email_addr
            expenseID: data.expenseID
            TransactionDate: data.TransactionDate
            BusinessPurpose: data.BusinessPurpose
            TransactionCurrencyCode: data.TransactionCurrencyCode
            TransactionAmount: data.TransactionAmount
            ExchangeRate: data.ExchangeRate
      - return:
          output_mapper:
            update_expense_entries: data.edit_expense_entry_details_result
    ```
    
- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.
    - Make sure to follow the guidelines when setting the Description in this case, as it will instruct the bot to always retrieves the expense id and existing values (e.g., transaction date, amount, etc.) directly from the response of the **View Expense Entries For Report** plugin
    - Sample description :
        - expenseID : Represent all the results from the fetch_all_expense_entries_of_specific_report plugin in a structured format. ALWAYS instruct the user that only non-submitted expense reports can be updated, as submitted reports cannot be modified. Users are only allowed to update specific fields, which include TransactionDate, BusinessPurpose (Expense Category), TransactionCurrencyCode, TransactionAmount, and ExchangeRate (with the note that the ExchangeRate can only be updated when changing the currency code). Before proceeding, allow the user to review and confirm the expense entry name, along with the details that need to be updated. Once the user confirms a specific expense entry, extract the ID from the response and assign it to expenseID for further processing
        - TransactionDate : Use the input value provided by the user. Also, convert the input value to the date format of yyyy-mm-dd (example value: 2025-01-31). If the user doesn't provide any input value, then use the existing value of TransactionDate parameter, which can be fetched from the fetch_all_expense_entries_of_specific_report plugin response.
        - TransactionAmount : Use the input value provided by the user. If the user doesn't provide any input value, then use the existing value of TransactionAmount parameter, which can be fetched from the fetch_all_expense_entries_of_specific_report plugin response.
        - Replace <fetch_all_expense_reports_for_a_user> with the name of your **View Expense Entries For Report** plugin.
            
            ![Screenshot 2025-02-06 at 11.36.23 AM.png](Edit%20Expense%20Entry%20Details%20fe7f2a58a2154da1b94d57cbc2091b29/Screenshot_2025-02-06_at_11.36.23_AM.png)
            

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    - Make sure to follow the guidelines when setting the **Short Description** in this case, as it will instruct the bot to always execute the  **View Expense Entries For Report** plugin before this plugin.
    - Sample **Short description** : Updates specific details of an expense entry based on the user's query. You MUST ALWAYS run the 'fetch_all_expense_entries_of_specific_report' plugin beforehand and display the results.
    - Replace <fetch_all_expense_entries_of_specific_report> with the name of your  **View Expense Entries For Report** plugin.
        
        ![Screenshot 2025-02-06 at 11.43.53 AM.png](Edit%20Expense%20Entry%20Details%20fe7f2a58a2154da1b94d57cbc2091b29/Screenshot_2025-02-06_at_11.43.53_AM.png)
        
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2025-02-06 at 11.44.58 AM.png](Edit%20Expense%20Entry%20Details%20fe7f2a58a2154da1b94d57cbc2091b29/Screenshot_2025-02-06_at_11.44.58_AM.png)
    
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

You've just added the SAP Concur "**Edit Expense Entry Details**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.