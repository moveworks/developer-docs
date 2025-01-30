---
description: A plugin that enables efficient searching for issues using specific keywords,
  helping to improve project tracking and workflow management.
fidelity: GUIDE
difficulty_level: BEGINNER
time_in_minutes: 20
name: Look Up Issue by Keyword
accreditations:
- DEFAULT
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A9037%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EList+all+Jira+issues+regarding+Studio%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3E+Search+Issues+%3C%2Fb%3E+%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+found+some+tickets+related+to+%3Cb%3E+Studio%3C%2Fb%3E.+Here+they+are%3A%3Cbr%3E%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Creator+Studio+Login+Issues%22%2C%22text%22%3A%22Update+login+functionality.+This+involves+enhancements+to+our+current+login+flow+to+increase+security+and+usability.%22%7D%2C%7B%22title%22%3A%22Studio+Approvals%22%2C%22text%22%3A%22Improve+the+approval+workflow+with+better+automation+and+UI+enhancements.%22%7D%5D%7D%5D%7D%7D%5D%7D
solution_tags:
- Engineering
- IT
- Project Management
systems:
- jira

---

# **Introduction**

JIRA is a leading platform for managing projects and tasks across various industries. The **Look Up Issue by Keyword** plugin enhances project tracking by enabling efficient searching for issues based on specific keywords.

By integrating this feature into your bot, you empower users to quickly find relevant issues without manually searching through Jira, improving workflow efficiency and team productivity.

This guide walks you through adding the **Look Up Issue by Keyword** feature to your bot using **Creator Studio**.

Let's get started!

# **Prerequisites**

- [Postman](https://www.postman.com/) or an API Testing Tool
- Jira Connector built in Creator Studio (follow the [Jira Authentication](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create your connector)

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A9037%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EList+all+Jira+issues+regarding+Studio%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3E+Search+Issues+%3C%2Fb%3E+%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+found+some+tickets+related+to+%3Cb%3E+Studio%3C%2Fb%3E.+Here+they+are%3A%3Cbr%3E%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Creator+Studio+Login+Issues%22%2C%22text%22%3A%22Update+login+functionality.+This+involves+enhancements+to+our+current+login+flow+to+increase+security+and+usability.%22%7D%2C%7B%22title%22%3A%22Studio+Approvals%22%2C%22text%22%3A%22Improve+the+approval+workflow+with+better+automation+and+UI+enhancements.%22%7D%5D%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. None.
- **Actions**:
    1. **Search Issues by Keyword**:
        - Query the specified keyword to retrieve all issues associated with it.
- Guidelines:
    1. None

# **API Research**

To efficiently build the use case of fetching issues based on a specific keyword, we utilize a single API with dynamic JQL filters. This approach simplifies integration, optimizes search accuracy and reduces redundancy while leveraging the power of Jira Query Language (JQL).

![Look up specific issues.png](Look%20Up%20Issue%20by%20Keyword%20183588d8909f8069b979d009682dc9e6/599d50ac-b4d5-425b-aaf0-d0edbc23b43d.png)

## **API #1: Search Issues by Keyword**

The [**Search for issues using JQL enhanced search (GET)**](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-search/#api-rest-api-3-search-jql-get) API allows you to retrieve issues based on a specified keyword using Jira Query Language (JQL). By applying a filter to search for issues containing the keyword, you can fetch relevant issue details, including issue key, status and other necessary fields for further operations.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/search/jql?jql=project%20%3D%20HSP&nextPageToken=%3Cstring%3E&maxResults={maxResults}&fields={fields}&expand=%3Cstring%3E&reconcileIssues={reconcileIssues}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

# **Steps**

## **Step 1: Build HTTP Action**

- Define your HTTP Actions for fetching all the backlog ideas of a specific project :
    1. **Search for Epic by Name**
        - In Creator Studio, create a new Action.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to define a new action
                
                ![getGithubContentProxy_(1).webp](Look%20Up%20Issue%20by%20Keyword%20183588d8909f8069b979d009682dc9e6/getGithubContentProxy1.webp)
                
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl --request GET \
              --url 'https://your-domain.atlassian.net/rest/api/3/project/search?jql=summary~"{{keyword}}"&fields=key,summary,status'\
              --user 'email@example.com:<api_token>' \
              --header 'Accept: application/json'
            ```
            
        - Click on `Use Existing Connector` > select the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) that you just created > Click on `Apply`. This will populate the Base URL and the Authorization section of the API Editor.
        - **Query** **Parameters** :
            - Key ( **jql** ) : Value ( **summary~"{{keyword}}”** )
                - This JQL filter searches for issues where the summary contains the specified keyword, allowing for partial or complete string matches.
            - Key ( **fields** ) : Value ( **key,summary,status ..etc** )
                - This JQL query retrieves only the specified fields from the response, ensuring a focused and concise dataset.
                
                ![Screenshot 2025-01-22 at 8.05.24 PM.png](Look%20Up%20Issue%20by%20Keyword%20183588d8909f8069b979d009682dc9e6/Screenshot_2025-01-22_at_8.05.24_PM.png)
                
        - **Input Variables** :
            - keyword : Example Value ( **studio** ).
                
                ![Screenshot 2025-01-22 at 8.08.28 PM.png](Look%20Up%20Issue%20by%20Keyword%20183588d8909f8069b979d009682dc9e6/Screenshot_2025-01-22_at_8.08.28_PM.png)
                
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.
            
            ![Screenshot 2025-01-22 at 8.10.35 PM.png](Look%20Up%20Issue%20by%20Keyword%20183588d8909f8069b979d009682dc9e6/Screenshot_2025-01-22_at_8.10.35_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-01-22 at 8.13.09 PM.png](Look%20Up%20Issue%20by%20Keyword%20183588d8909f8069b979d009682dc9e6/Screenshot_2025-01-22_at_8.13.09_PM.png)
            

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![getGithubContentProxy_(2).webp](Look%20Up%20Issue%20by%20Keyword%20183588d8909f8069b979d009682dc9e6/getGithubContentProxy2.webp)
    
- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![Screenshot 2025-01-23 at 1.37.55 PM.png](Look%20Up%20Issue%20by%20Keyword%20183588d8909f8069b979d009682dc9e6/Screenshot_2025-01-23_at_1.37.55_PM.png)
    
- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```bash
    steps:
      - action:
          output_key: search_for_specificed_issue_result
          action_name: search_for_specificed_issue
          progress_updates:
            on_complete: Completed fetching all related issues
            on_pending: Fetching all related issues
          input_args:
            keyword: data.keyword
      - return:
          output_mapper:
            results: data.search_for_specificed_issue_result.issues
    ```
    
- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.
    
    ![Screenshot 2025-01-22 at 8.17.10 PM.png](Look%20Up%20Issue%20by%20Keyword%20183588d8909f8069b979d009682dc9e6/Screenshot_2025-01-22_at_8.17.10_PM.png)
    

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    
    ![Screenshot 2025-01-23 at 1.39.45 PM.png](Look%20Up%20Issue%20by%20Keyword%20183588d8909f8069b979d009682dc9e6/Screenshot_2025-01-23_at_1.39.45_PM.png)
    
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2025-01-23 at 1.40.06 PM.png](Look%20Up%20Issue%20by%20Keyword%20183588d8909f8069b979d009682dc9e6/Screenshot_2025-01-23_at_1.40.06_PM.png)
    
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

You've just added the Jira "**Look Up Issue by Keyword**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.