---
accreditations:
- DEFAULT
description: A plugin that retrieves all possible workflow statuses for a specific
  issue.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: d185ff99-c8df-4f05-95d6-c0380dd1d75a
name: Lookup Issue Status
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A9037%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EList+all+statuses+available+for+a+Jira+issue+related+to+Studio.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3E+Search+Issues+%3C%2Fb%3E+%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+found+some+tickets+related+to+%3Cb%3E+Studio%3C%2Fb%3E.+Here+they+are%3A%3Cbr%3E%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%221.+JIRA+129+%3A+Creater+studio+Isuues+-+Status%3A+To+Do%22%7D%2C%7B%22title%22%3A%222.+JIRA+190+%3A++studio+approvals+-+Status%3A+In+Progress%22%7D%5D%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EPlease+confirm+which+issue+you+would+like+to+see+the+available+statuses+for%2C+and+I+will+provide+the+details.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3E+2+%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3E+Fetch+Statuses+%3C%2Fb%3E+%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EUpdate+regarding+issue+JIRA+190%3A+The+available+statuses+for+the+issue+JIRA+190+are%3A%3Cbr%3E%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%221.+To+Do%22%7D%2C%7B%22title%22%3A%222.+In+Progress%22%7D%2C%7B%22title%22%3A%223.+Done%22%7D%5D%7D%5D%7D%7D%5D%7D
solution_tags:
- Engineering
- IT
- Project Management
systems:
- jira
time_in_minutes: 30
---

# **Introduction**

JIRA is a leading platform for project and task management. The **Lookup Issue Status** plugin enhances workflow visibility by retrieving all available statuses for a specific issue.

Integrating this feature into your bot allows users to quickly check issue progress and manage tasks more efficiently, reducing navigation time and boosting productivity.

This guide walks you through adding **Lookup Issue Status** to your bot using **Creator Studio**.

Let’s get started! 

# **Prerequisites**

- [Postman](https://www.postman.com/) or an API Testing Tool
- Jira Connector built in Creator Studio (follow the [Jira Authentication](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create your connector)
- The **Look Up Issue by Keyword** plugin built in Creator Studio. It retrieves all issues related to a specific keyword based on the user's query. Refer to the [**Look Up Issue by Keyword**](https://developer.moveworks.com/creator-studio/resources/plugin/?id=jira-lookup-issue-keyword) guide for setup instructions.

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A9037%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EList+all+statuses+available+for+a+Jira+issue+related+to+Studio.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3E+Search+Issues+%3C%2Fb%3E+%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+found+some+tickets+related+to+%3Cb%3E+Studio%3C%2Fb%3E.+Here+they+are%3A%3Cbr%3E%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%221.+JIRA+129+%3A+Creater+studio+Isuues+-+Status%3A+To+Do%22%7D%2C%7B%22title%22%3A%222.+JIRA+190+%3A++studio+approvals+-+Status%3A+In+Progress%22%7D%5D%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EPlease+confirm+which+issue+you+would+like+to+see+the+available+statuses+for%2C+and+I+will+provide+the+details.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3E+2+%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3E+Fetch+Statuses+%3C%2Fb%3E+%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EUpdate+regarding+issue+JIRA+190%3A+The+available+statuses+for+the+issue+JIRA+190+are%3A%3Cbr%3E%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%221.+To+Do%22%7D%2C%7B%22title%22%3A%222.+In+Progress%22%7D%2C%7B%22title%22%3A%223.+Done%22%7D%5D%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Fetch issue key
- **Actions**:
    1. **Fetch Issue Statuses**:
        - Fetch **issue key** of a specific issue from the **Look Up Issue by Keyword** plugin response and use it to fetch the available statuses for that specific issue.
- **Guidelines**:
    1. Add a guideline to ensure that this plugin executes only when **Look Up Issue by Keyword** plugin has executed and always ask the user for specific issue instead of making any assumptions.

    2. Add a guideline to ensure that this plugin always retrieves the issue key directly from the response of the **Look Up Issue by Keyword** plugin, rather than relying on a sample issue key or making assumptions.

# **API Research**

To efficiently build the use case for fetching available statuses for a specific issue, we utilize a single API and the **Look Up Issue by Keyword** plugin. 

![issue-status.png](Lookup%20Issue%20Status%20183588d8909f80839d99f85479e59d9f/issue%20status.png)

## **API #1: Get Available Transitions**

The **Get Available Transitions** API enables you to retrieve available statuses for a specific issue. You need the issue key, which can be fetched from the '**Look Up Issue by Keyword**' plugin response.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/issue/{issueKey}/transitions' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

# **Steps**

## **Step 1: Build HTTP Action**

- Define your HTTP Actions for fetching all the available statuses of a specific issue :
    1. **Search for Epic by Name**
        - In Creator Studio, create a new Action.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to define a new action
                
                ![getGithubContentProxy_(1).webp](Lookup%20Issue%20Status%20183588d8909f80839d99f85479e59d9f/getGithubContentProxy1.webp)
                
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl --request GET \
              --url 'https://your-domain.atlassian.net/rest/api/3/issue/{{issue_key}}/transitions'\
              --user 'email@example.com:<api_token>' \
              --header 'Accept: application/json'
            ```
            
        - Click on `Use Existing Connector` > select the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) that you just created > Click on `Apply`. This will populate the Base URL and the Authorization section of the API Editor.
        - **Input Variables** :
            - issue_key : Example Value ( **NT-10** ).
                
                ![Screenshot 2025-01-23 at 11.50.40 AM.png](Lookup%20Issue%20Status%20183588d8909f80839d99f85479e59d9f/Screenshot_2025-01-23_at_11.50.40_AM.png)
                
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.
            
            ![Screenshot 2025-01-23 at 11.53.36 AM.png](Lookup%20Issue%20Status%20183588d8909f80839d99f85479e59d9f/Screenshot_2025-01-23_at_11.53.36_AM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-01-23 at 11.52.23 AM.png](Lookup%20Issue%20Status%20183588d8909f80839d99f85479e59d9f/Screenshot_2025-01-23_at_11.52.23_AM.png)
            

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![getGithubContentProxy_(2).webp](Lookup%20Issue%20Status%20183588d8909f80839d99f85479e59d9f/getGithubContentProxy2.webp)
    
- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![Screenshot 2025-01-23 at 1.32.05 PM.png](Lookup%20Issue%20Status%20183588d8909f80839d99f85479e59d9f/Screenshot_2025-01-23_at_1.32.05_PM.png)
    
- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```bash
    steps:
      - action:
          action_name: get_available_transitions
          input_args:
            issue_key: data.issue_key
          output_key: get_available_transitions_result
      - script:
          output_key: OUTPUT_KEY
          input_args:
            res: data.get_available_transitions_result
          code: >
            filtered_transitions = []
    
            filtered_transitions = [{"name": transition["name"], "id": transition["id"]} for transition in res["transitions"]]
    
            return filtered_transitions
      - return:
          output_mapper:
            results: data.OUTPUT_KEY
    ```
    
- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.

  - Make sure to follow the guidelines when setting the Description in this case, as it will instruct the bot to always retrieve the issue key directly from the response of the **Look Up Issue by Keyword** plugin.

  - Sample description : Represent the results from the fetch_details_of_specified_issue plugin. The user confirms the issue name. After that, fetch the issue key of the specific issue selected by the user from the response of the fetch_details_of_specified_issue plugin call and use that issue key value for issue_key.

  - Replace <fetch_details_of_specified_issue> with the name of your Look Up Issue by Keyword plugin.
    
    ![Screenshot 2025-01-23 at 12.02.04 PM.png](Lookup%20Issue%20Status%20183588d8909f80839d99f85479e59d9f/Screenshot_2025-01-23_at_12.02.04_PM.png)
    

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    - Make sure to follow the guidelines when setting the **Short Description** in this case, as it will instruct the bot to always execute the **Look Up Issue by Keyword** plugin before this plugin.
    - Sample **Short description** : Retrieves all available status details for a specified issue selected by the user. You MUST ALWAYS run the 'fetch_details_of_specified_issue' plugin beforehand and display the results. First, ask the user to confirm the exact issue name they are looking for, then retrieve all available status types for the selected issue.
    - Replace <fetch_details_of_specified_issue> with the name of your **Look Up Issue by Keyword** plugin.
    
      ![Screenshot 2025-01-23 at 1.33.38 PM.png](Lookup%20Issue%20Status%20183588d8909f80839d99f85479e59d9f/Screenshot_2025-01-23_at_1.33.38_PM.png)
    
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2025-01-23 at 1.35.07 PM.png](Lookup%20Issue%20Status%20183588d8909f80839d99f85479e59d9f/Screenshot_2025-01-23_at_1.35.07_PM.png)
    
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

You've just added the Jira "**Lookup Issue Status**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.