---
description: A plugin that allows a user to update status of an issue.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_link: https://my.moveworks.com/agent-studio/plugin-workspace/plugins?externalAssetId=81da1534-8d12-4b7d-a039-dd7cf5846986
name: Update Issue Status
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A5491%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+need+to+change+the+status+of+an+issue+regarding+server+upgrade+in+Jira.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Searching+for+issues+related+to+%27server+upgrade%27...%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Please+confirm+the+issue+you%27re+referring+to%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22JT-123+-+Prepare+server+upgrade+plan%22%2C%22text%22%3A%22Status%3A+To+Do%22%7D%2C%7B%22title%22%3A%22JT-456+-+Finalize+server+upgrade%22%2C%22text%22%3A%22Status%3A+In+Progress%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22The+first+one%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22I%27m+currently+retrieving+the+available+statuses+for+the+issue+JT-123.++This+process+is+ongoing%2C+and+I%27ll+update+you+once+I+have+the+information.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22For+JT-123%2C+the+available+statuses+are%3A%5Cn-+To+Do%5Cn-+In+Progress%5Cn-+Done%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Please+let+me+know+which+status+you+would+like+to+set+for+JT-123.%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Done%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Update+regarding+JT-123%3A+The+status+has+been+successfully+updated+to+Done.%22%7D%5D%7D%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira
time_in_minutes: 60
---

# **Introduction**

JIRA is a leading platform for project and task management. The **Update Issue Status** plugin streamlines workflow management by allowing users to update the status of an issue quickly and effortlessly.

By integrating this feature into your bot, you enable users to modify issue statuses conversationally, reducing manual effort and improving team efficiency.

This guide walks you through adding the **Update Issue Status** feature to your bot using **Creator Studio**.

Let’s get started!

# **Prerequisites**

- [Postman](https://www.postman.com/) or an API Testing Tool
- Jira Connector built in Creator Studio (follow the [Jira Authentication](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create your connector)
- The **Look Up Issue by Keyword** and **Lookup Issue Status** plugins are built in Creator Studio. These plugins allow users to retrieve all issues related to a specific keyword and check their statuses based on a query. For setup instructions, refer to the [**Look Up Issue by Keyword**](https://developer.moveworks.com/creator-studio/resources/plugin/?id=jira-lookup-issue-keyword) and [**Lookup Issue Status**](https://developer.moveworks.com/creator-studio/resources/plugin/?id=jira-lookup-issue-status) guides.

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A5491%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+need+to+change+the+status+of+an+issue+regarding+server+upgrade+in+Jira.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Searching+for+issues+related+to+%27server+upgrade%27...%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Please+confirm+the+issue+you%27re+referring+to%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22JT-123+-+Prepare+server+upgrade+plan%22%2C%22text%22%3A%22Status%3A+To+Do%22%7D%2C%7B%22title%22%3A%22JT-456+-+Finalize+server+upgrade%22%2C%22text%22%3A%22Status%3A+In+Progress%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22The+first+one%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22I%27m+currently+retrieving+the+available+statuses+for+the+issue+JT-123.++This+process+is+ongoing%2C+and+I%27ll+update+you+once+I+have+the+information.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22For+JT-123%2C+the+available+statuses+are%3A%5Cn-+To+Do%5Cn-+In+Progress%5Cn-+Done%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Please+let+me+know+which+status+you+would+like+to+set+for+JT-123.%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Done%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Update+regarding+JT-123%3A+The+status+has+been+successfully+updated+to+Done.%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Fetch issue key.
    2. Fetch status id.
- **Actions**:
    1. **Update the Issue's Status**:
        - Use the retrieved specific issue key and status id to update the required status for the issue specified by the user.
- **Guidelines**:
    1. Add a guideline to ensure that this plugin executes only after the **Lookup Issue Status** plugins has run. Additionally, always prompt the user for a specific issue and status instead of making any assumptions.

    2. Add a guideline to ensure that this plugin always retrieves the issue key and status id directly from the response of the **Lookup Issue Status** plugin, rather than relying on a sample values or making assumptions.


# **API Research**

To efficiently build the use case for updating the status of a specific issue, we utilize a single API along with the **Look Up Issue by Keyword** and **Lookup Issue Status** plugins.

![update issue status.png](Update%20Issue%20Status%20135588d8909f80c7893bdaaf5c94afd6/update_issue_status.png)

## **API #1: Update the Issue's Status**

The **Update Issue Status** API allows you to update the status of a specific issue. You need the issue key and status ID, which can be retrieved from the **Look Up Issue by Keyword** and **Lookup Issue Status** plugin’s response.

```bash
curl --request POST \
  --url 'https://your-domain.atlassian.net/rest/api/3/issue/{issueKey}/transitions' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
  --data '{
    "transition":
    {
      "id": "{{statusId}}"
    }
  }'
```

# **Steps**

## **Step 1: Build HTTP Action**

- Define your HTTP Actions for updating the status of a specified issue :
    1. **Search for Epic by Name**
        - In Creator Studio, create a new Action.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to define a new action
                
                ![getGithubContentProxy_(1).webp](Update%20Issue%20Status%20135588d8909f80c7893bdaaf5c94afd6/getGithubContentProxy1.webp)
                
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl --request POST \
              --url 'https://your-domain.atlassian.net/rest/api/3/issue/{{issue_key}}/transitions'\
              --user 'email@example.com:<api_token>' \
              --header 'Accept: application/json'
              --data '{
                "transition":
                {
                  "id": "{{status_id}}"
                }
            }'
            ```
            
        - Click on `Use Existing Connector` > select the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) that you just created > Click on `Apply`. This will populate the Base URL and the Authorization section of the API Editor.
        - **Input Variables** :
            - issue_key : Example Value ( **NT-10** )
            - status_id : Example Value ( **31** )
                
                ![Screenshot 2025-01-23 at 7.52.14 PM.png](Update%20Issue%20Status%20135588d8909f80c7893bdaaf5c94afd6/Screenshot_2025-01-23_at_7.52.14_PM.png)
                
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.
            
            ![Screenshot 2025-01-23 at 7.56.16 PM.png](Update%20Issue%20Status%20135588d8909f80c7893bdaaf5c94afd6/Screenshot_2025-01-23_at_7.56.16_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-01-23 at 7.58.30 PM.png](Update%20Issue%20Status%20135588d8909f80c7893bdaaf5c94afd6/Screenshot_2025-01-23_at_7.58.30_PM.png)
            

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![getGithubContentProxy_(2).webp](Update%20Issue%20Status%20135588d8909f80c7893bdaaf5c94afd6/getGithubContentProxy2.webp)
    
- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![Screenshot 2025-01-23 at 8.04.36 PM.png](Update%20Issue%20Status%20135588d8909f80c7893bdaaf5c94afd6/Screenshot_2025-01-23_at_8.04.36_PM.png)
    
- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```bash
    steps:
      - action:
          output_key: update_the_issue_status_result
          action_name: update_the_issue_status
          progress_updates:
            on_complete: Completed updating the issue status
            on_pending: Updating the issue status
          input_args:
            issue_key: data.issue_key
            status_id: data.status_id
      - return:
          output_mapper:
            result: data.update_the_issue_status_result
    ```
    
- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.

  - Make sure to follow the guidelines when setting the Description in this case, as it will instruct the bot to always retrieves the issue key and status id directly from the response of the `Lookup Issue Status` plugin.

  - Sample description : 
    - issue_key : Fetch the issue key from the get_available_issue_statuses plugin call and use that issue key value for issue_key.

    - status_id : Represent the results from the get_available_transitions plugin.The user confirms the new issue status. After that, fetch the status ID of the specific status selected by the user from the results of the get_available_transitions plugin and use that new status id value for status_id.

    - Replace <get_available_issue_statuses> with the name of your Lookup Issue Status plugin.
    
      ![Screenshot 2025-01-23 at 8.06.23 PM.png](Update%20Issue%20Status%20135588d8909f80c7893bdaaf5c94afd6/Screenshot_2025-01-23_at_8.06.23_PM.png)
    

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    - Make sure to follow the guidelines when setting the **Short Description** in this case, as it will instruct the bot to always execute the **Lookup Issue Status** plugin before this plugin.
    - Sample **Short description** : Updates the specified status of an issue selected by the user. You MUST ALWAYS run the **'**get_available_issue_statuses**'** plugin beforehand and display the results. First, ask the user to confirm the exact issue name they are looking for. Then, retrieve and display all available statuses for the selected issue. Finally, ask the user to confirm the status they want to update and proceed with updating it accordingly.
    - Replace <get_available_issue_statuses> with the name of your **Lookup Issue Status** plugin.
        
        ![Screenshot 2025-01-23 at 8.11.54 PM.png](Update%20Issue%20Status%20135588d8909f80c7893bdaaf5c94afd6/Screenshot_2025-01-23_at_8.11.54_PM.png)
        
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2025-01-23 at 8.14.04 PM.png](Update%20Issue%20Status%20135588d8909f80c7893bdaaf5c94afd6/Screenshot_2025-01-23_at_8.14.04_PM.png)
    
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

You've just added the Jira "**Update Issue Status**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.