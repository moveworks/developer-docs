---
description: A plugin which can look up assigned epics in Jira.
fidelity: VALIDATED
name: Check Open Epics
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A5094%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3E+What+open+epics+are+in+project+Kalistar%3F%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ERetrieve+Epics+for+Project%3C%2Fb%3E+for+%5C%22Kalistar%5C%22%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Here+are+the+currently+open+epics%3A%3Cbr%3E%3Cb%3EEPIC-111%3A%3C%2Fb%3E+Implement+new+security+protocols%3Cbr%3E%3Cb%3EEPIC-222%3A%3C%2Fb%3E+Upgrade+network+infrastructure%3Cbr%3EWould+you+like+to+visit+JIRA+for+more+details+or+take+any+action+on+these+epics%3F%22%7D%5D%7D%7D%5D%7D
solution_tags:
- Engineering
- IT
- Project Management
systems:
- jira
---

# Introduction

Jira is a leading platform for managing projects and tasks across industries. The **Check Open Epics** plugin simplifies retrieving and managing assigned epics by providing quick insights into their status, helping teams stay on top of their priorities and deadlines.

Integrating this feature with your bot enables seamless lookup and management of open epics through conversational queries, enhancing team productivity and collaboration.

This guide walks you through adding the "Check Open Epics" feature to your bot using Creator Studio.

Let's get started!

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- Jira Connector built in Creator Studio (follow the [Jira Authentication](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create your connector)

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A5094%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3E+What+open+epics+are+in+project+Kalistar%3F%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ERetrieve+Epics+for+Project%3C%2Fb%3E+for+%5C%22Kalistar%5C%22%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Here+are+the+currently+open+epics%3A%3Cbr%3E%3Cb%3EEPIC-111%3A%3C%2Fb%3E+Implement+new+security+protocols%3Cbr%3E%3Cb%3EEPIC-222%3A%3C%2Fb%3E+Upgrade+network+infrastructure%3Cbr%3EWould+you+like+to+visit+JIRA+for+more+details+or+take+any+action+on+these+epics%3F%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# Creator Studio Components

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Fetch project key/ID.
- **Actions**:
    1. **Retrieve Project Details**:
        - Query the specified project to fetch its unique project key or ID.
    2. **Fetch Assigned Epics Information**:
        - Use the retrieved project key or ID to fetch assigned epic details. Utilize JQL (Jira Query Language) to filter results and specify required fields, such as summary, assignee, status etc.
    3. Guidelines:
        1. None
    
    # **API Research**
    
    To build this use case, we will utilize two APIs. Since our goal is to fetch open, assigned epics, we'll focus on Jira's issue-related APIs. Only two API calls are required to achieve this.
    
    ![assigned epics.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/270ee0bd-dc98-418f-afea-99cacf2240c2.png)
    
    ## API #1: Get projects paginated
    
    The [**Get Projects Paginated**](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-projects/#api-rest-api-3-project-search-get) API in Jira allows you to retrieve accessible projects in a paginated format, improving efficiency for large instances. It also supports filtering projects by keyword using query parameters.
    
    ```bash
    curl --request GET \
      --url 'https://your-domain.atlassian.net/rest/api/3/project/search' \
      --user 'email@example.com:<api_token>' \
      --header 'Accept: application/json'
    ```
    
    ## API #2: Search for issues using JQL enhanced search (GET)
    
    The [**Search for issues using JQL enhanced search (GET)**](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-search/#api-rest-api-3-search-jql-get) API enables you to search for issues using Jira Query Language (JQL). This API is ideal for filtering epics assigned to users that are not closed across all accessible projects. It also supports additional query parameters for refining search results, such as specifying fields to include in the response.
    
    ```bash
    curl --request GET \
      --url 'https://your-domain.atlassian.net/rest/api/3/search/jql?jql=project%20%3D%20HSP&nextPageToken=%3Cstring%3E&maxResults={maxResults}&fields={fields}&expand=%3Cstring%3E&reconcileIssues={reconcileIssues}' \
      --user 'email@example.com:<api_token>' \
      --header 'Accept: application/json'
    ```
    
    # **Steps**
    
    ## **Step 1: Build HTTP Action**

    - Define your HTTP Actions for fetching all the backlog ideas of a specific project :
        1. **Get projects paginated**
            - In Creator Studio, create a new Action.
                - Navigate to `Plugins` section > `Actions` tab
                - Click on `CREATE` to define a new action

              ![Screenshot 2024-12-19 at 3.59.19 PM.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/Screenshot%202024-12-19%20at%203.59.19 PM.png)

            - Click on the `IMPORT CURL` option and paste the following cURL command:
              ```bash
              curl --request GET \
                --url 'https://your-domain.atlassian.net/rest/api/3/project/search?query={{project_name}}?'\
                --user 'email@example.com:<api_token>' \
                --header 'Accept: application/json'
              ```
           - Click on `Use Existing Connector` > select the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) that you just created > Click on `Apply`. This will populate the Base URL and the Authorization section of the API Editor.
            - **Input Variables** :
                - project_name : Example Value ( **Content System Discovery** ).
                
                  ![Screenshot 2024-12-10 at 6.10.35 PM.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/Screenshot_2024-12-10_at_6.10.35_PM.png)
                
            - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.
            
              ![Screenshot 2024-12-09 at 7.24.53 PM.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/Screenshot_2024-12-09_at_7.24.53_PM.png)
            
            - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
              ![Screenshot 2024-12-09 at 7.29.30 PM.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/Screenshot_2024-12-09_at_7.29.30_PM.png)
            
        2. **Search for issues using JQL enhanced search**
            - Repeat the steps above to create another action.
            - Click on the `IMPORT CURL` option and paste the following cURL command:
              ```bash
              curl --request GET \
               --url 'https://your-domain.atlassian.net/rest/api/3/search/jql?fields=summary%2Cassignee%2CemailAddress%2Cstatus&jql=project%3D{{PROJECT_KEY}}%20AND%20issuetype%3DEpic%20AND%20assignee%20IS%20NOT%20EMPTY%20AND%20Status%20!%3D%20%22done%22?'\
              --user 'email@example.com:<api_token>' \
              --header 'Accept: application/json'
              ```
           - Use the existing connector by following the steps outlined in the previous point to populate the Base URL and Authorization section.

            - **Query** **Parameters** :
                - Key ( **jql** ) : Value ( **project = {{PROJECT_KEY}} AND issuetype=Epic AND assignee IS NOT EMPTY AND Status != "done”** )
                  - This JQL query filters out open Epics by excluding completed ones and ensuring each Epic has an assigned user.
                - Key ( **fields** ) : Value ( **summary,assignee,emailAddress,status..etc** )
                  - This JQL query retrieves only the specified fields from the response, ensuring a focused and concise dataset. 
                
                  ![Screenshot 2024-12-10 at 1.06.43 PM.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/Screenshot_2024-12-10_at_1.06.43_PM.png)
                
            - **Input Variables** :
                - **PROJECT_KEY** : Example Value ( **BACKLOG** )
                
                  ![Screenshot 2024-12-10 at 6.15.07 PM.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/Screenshot_2024-12-10_at_6.15.07_PM.png)
                
            - Test the Connector setup as described earlier to verify the response. If the output schema is incorrect or missing, click `GENERATE FROM RESPONSE` to update it.
            
              ![Screenshot 2024-12-10 at 1.14.19 PM.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/Screenshot_2024-12-10_at_1.14.19_PM.png)
            
            - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
              ![Screenshot 2024-12-10 at 1.18.45 PM.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/Screenshot_2024-12-10_at_1.18.45_PM.png)
            

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**

  ![image 4.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/image_4.png)

- Give your Compound Action a **Name** and **Description** , then click `Next`
Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )

  ![Screenshot 2024-12-10 at 4.01.49 PM.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/Screenshot_2024-12-10_at_4.01.49_PM.png)

- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.

    ```yaml
    steps:
    - action:
        output_key: fetch_all_projects_based_on_query_result
        action_name: fetch_all_projects_based_on_query
        progress_updates:
            on_complete: ON_COMPLETE_MESSAGE
            on_pending: ON_PENDING_MESSAGE
        input_args:
            query: data.project_name
    - action:
        output_key: fetch_all_assigned_epics_on_query_result
        action_name: fetch_all_assigned_epics_on_query
        progress_updates:
            on_complete: ON_COMPLETE_MESSAGE
            on_pending: ON_PENDING_MESSAGE
        input_args:
            PROJECT_KEY: data.fetch_all_projects_based_on_query_result.values[0].key
    - return:
        output_mapper:
            results: data.fetch_all_assigned_epics_on_query_result.issues
    ```

- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.

  ![Screenshot 2024-12-10 at 4.05.44 PM.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/Screenshot_2024-12-10_at_4.05.44_PM.png)

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.

  ![Screenshot 2024-12-10 at 4.10.56 PM.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/Screenshot_2024-12-10_at_4.10.56_PM.png)

- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.

  ![Screenshot 2024-12-10 at 4.10.56 PM copy.png](Check%20Open%20Epics%20eed349af481e4c09819d9f8fe6e27824/Screenshot_2024-12-10_at_4.10.56_PM_copy.png)

- Click `Next` and set up your positive and negative triggering examples. This ensures that the bot triggers your plugin given a relevant utterance.
    - See our [guide](https://developer.moveworks.com/creator-studio/conversation-design/triggers/natural-language-triggers/#how-to-write-good-triggering-examples) on Triggering
- Lastly, click `Next` and set the **Launch Rules** you want your plugin to abide by.
    - See our [guide](https://developer.moveworks.com/creator-studio/administration/launch-options/) on Launch Rules

## **Step 4: See it in action!**

- After clicking the final `Submit` button, your plugin will be published to the bot and triggerable based on your **Launch Rules.**
- You should wait up to **5 minutes** after making changes before trying to test in your bot!
- If you run into an issue:
    1. Check our [troubleshooting guides](https://developer.moveworks.com/creator-studio/troubleshooting/support/)
    2. Understand your issue using Logs
    3. Reach out to Support

# **Congratulations!**

You've just added the Jira "**Check Open Epics**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.