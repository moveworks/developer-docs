---
accreditations:
- DEFAULT
description: A plugin that allows retrieving ideas from your backlog in Jira.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: a6aebb20-fd50-415b-aa3e-c45676d32cc4
name: Lookup Backlog Ideas
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+backlog+items+from+Project+Iron+that+reference+onboarding.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+%27s+backlog+items+from+Project+Iron+with+keyword+onboarding.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+your+current+Jira+backlog+for+Project+Iron+with+keyword+%27onboarding%27%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EBacklog+Item+1%3A+Implement+onboarding+feature%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+To+Do%3Cbr%3E%3Cb%3EPriority%3A%3C%2Fb%3E+High%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IR-123%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EBacklog+Item+2%3A+Resolve+onboarding+task+resolution%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+To+Do%3Cbr%3E%3Cb%3EPriority%3A%3C%2Fb%3E+Medium%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IR-124%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EBacklog+Item+3%3A+Update+user+onboarding+date%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+To+Do%3Cbr%3E%3Cb%3EPriority%3A%3C%2Fb%3E+Low%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IR-125%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Approvals
- IT
- Project Management
systems:
- jira
time_in_minutes: 30
---

# Introduction

Jira is a leading platform for managing projects and ideas across industries. Jira Backlog Ideas simplifies retrieving ideas or tickets from your backlog by filtering based on project names and keywords, helping teams prioritize and act efficiently.

Integrating this feature with your bot allows you to fetch and manage backlog ideas instantly through conversational queries, boosting productivity.

This guide walks you through adding the "Check Backlog Ideas" feature to your bot using Creator Studio.

Let's get started!

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- Jira Connector built in Creator Studio (follow the [Jira Authentication guide](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) to create your connector)

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A9926%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Show+me+the+backlog+items+from+Project+Iron+that+reference+onboarding.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Retrieving+%27s+backlog+items+from+Project+Iron+with+keyword+onboarding.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Here%27s+your+current+Jira+backlog+for+Project+Iron+with+keyword+%27onboarding%27%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Backlog+Item+1%3A+Implement+onboarding+feature%22%2C%22text%22%3A%22%3Cb%3EStatus%3A%3C%2Fb%3E+To+Do%3Cbr%3E%3Cb%3EPriority%3A%3C%2Fb%3E+High%22%7D%2C%7B%22title%22%3A%22Backlog+Item+2%3A+Resolve+onboarding+task+resolution%22%2C%22text%22%3A%22%3Cb%3EStatus%3A%3C%2Fb%3E+To+Do%3Cbr%3E%3Cb%3EPriority%3A%3C%2Fb%3E+Medium%22%7D%2C%7B%22title%22%3A%22Backlog+Item+3%3A+Update+user+onboarding+date%22%2C%22text%22%3A%22%3Cb%3EStatus%3A%3C%2Fb%3E+To+Do%3Cbr%3E%3Cb%3EPriority%3A%3C%2Fb%3E+Low%22%7D%5D%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# Creator Studio Components

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Fetch project key/ID.
    2. Fetch board ID using project key/ID.
- **Actions**:
    1. **Retrieve Project Details**:
        - Query the specified project to fetch its unique project key or ID.
    2. **Identify Board Information**:
        - Use the retrieved project key or ID to fetch board details and obtain the board ID associated with the specified project.
    3. **Fetch Backlog Issues**:
        - Query the backlog for the board using its ID and filter the results to include only issues that match the keyword specified by the user.
- **Guidelines:**
    1. None

# **API Research**

To build this use case, we will utilize three APIs. Since we are working with Jira backlog ideas, it’s essential to explore the backlog-related APIs provided by Jira. Only three API calls are needed for this use case.

![Backlog ideas flowchart.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Backlog_ideas_flowchart.png)

## API #1: Get projects paginated

The [**Get Projects Paginated**](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-projects/#api-rest-api-3-project-search-get) API in Jira allows you to retrieve accessible projects in a paginated format, improving efficiency for large instances. It also supports filtering projects by keyword using query parameters.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/project/search' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

## API #2: Get Board Details

The **Get Board Details** API in Jira allows you to retrieve board details for all accessible projects. It also supports filtering projects using the projectKeyOrId query parameter.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/agile/1.0/board?projectKeyOrId={projectKeyOrId}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

## API #3: Fetch the backlog issues

The **Fetch Backlog Issues** API in Jira allows you to retrieve all issues from specific board IDs. It also supports JQL to filter issues by a specific keyword

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/agile/1.0/board/{boardId}/backlog' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

# **Steps**

## **Step 1: Build HTTP Action**

- Define your HTTP actions for fetching all the backlog ideas of a specific project :
    1. **Get projects paginated**
        - In Creator Studio, create a new Action.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to define a new action
            
          ![Screenshot 2024-12-19 at 3.59.19 PM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/studio.png)

        - Click on the `IMPORT CURL` option and paste the following cURL command:
          ```bash
          curl --request GET \
            --url 'https://your-domain.atlassian.net/rest/api/3/project/search?query={{project_name}}?' \
            --user 'email@example.com:<api_token>' \
            --header 'Accept: application/json'
          ```
        - Click on `Use Existing Connector` > select the `Jira connector` that you just created > Click on `Apply`. This will populate the Base URL and the Authorization section of the API Editor.
                      
        - **Input Variables** :
            - **project_name** : Example Value ( **Content System Discovery** )
                
                ![Screenshot 2024-12-10 at 6.10.35 PM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-10_at_6.10.35_PM.png)
                
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.
            
            ![Screenshot 2024-12-09 at 7.24.53 PM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-09_at_7.24.53_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
        
            ![Screenshot 2024-12-09 at 7.29.30 PM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-09_at_7.29.30_PM.png)
        
    2. **Get Board Details**
        - Repeat the steps above to create another plugin.
        - Click on the `IMPORT CURL` option and paste the following cURL command:
          ```bash
          curl --request GET \
            --url 'https://your-domain.atlassian.net/rest/agile/1.0/board?projectKeyOrId={projectKeyOrId}' \
            --user 'email@example.com:<api_token>' \
            --header 'Accept: application/json'
          ```
        - Use the existing connector by following the steps outlined in the previous point to populate the Base URL and Authorization section.
        - **Query** **Parameters** :
            - Key ( **projectKeyOrId** ) : Value ( **{{project_key}}** )
            - This JQL query parameter filters out boards that are associated with a specific project.
            
              ![Screenshot 2024-12-10 at 1.36.59 PM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-10_at_1.36.59_PM.png)
            
        - **Input Variables** :
            - **project_key** : Example Value ( **NT** )
            
              ![Screenshot 2024-12-11 at 10.42.00 AM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-11_at_10.42.00_AM.png)
            
        - Test the Connector setup as described earlier to verify the response. If the output schema is incorrect or missing, click `GENERATE FROM RESPONSE` to update it.
            
             ![Screenshot 2024-12-09 at 7.44.13 PM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-09_at_7.44.13_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2024-12-09 at 7.58.51 PM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-09_at_7.58.51_PM.png)
            
    3. **Fetch the backlog issues**
        - Repeat the steps above to create another plugin.
        - Click on the `IMPORT CURL` option and paste the following cURL command:
          ```bash
          curl --request GET \
            --url 'https://your-domain.atlassian.net/rest/agile/1.0/board/26/backlog?fields=summary,status,priority,assignee&jql=(summary ~ "keyword")' \
            --user 'email@example.com:<api_token>' \
            --header 'Accept: application/json'
          ```
        - Use the existing connector by following the steps outlined in the previous point to populate the Base URL and Authorization section.
        - **Query Parameters** :
            - Key ( **jql** ) : Value ( **(summary ~ "{{keyword}}")** )
              - This JQL query filters out boards that are associated with a specific keyword.
            - Key ****( **fields** ) : **Value** ( summary,status,priority,assignee )
              - This JQL query retrieves only the specified fields from the response, ensuring a focused and concise dataset.
            
              ![Screenshot 2024-12-09 at 8.17.42 PM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-09_at_8.17.42_PM.png)
            
        - **Input Variables** :
            - **board_id** : Example Value ( **26** )
            - **keyword** : Example Value ( **studio** )
            
              ![Screenshot 2024-12-09 at 8.17.50 PM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-09_at_8.17.50_PM.png)
            
        - Test the Connector setup as described earlier to verify the response. If the output schema is incorrect or missing, click `GENERATE FROM RESPONSE` to update it.
        
          ![Screenshot 2024-12-11 at 10.52.54 AM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-11_at_10.52.54_AM.png)
        
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
        
          ![Screenshot 2024-12-10 at 1.02.21 PM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-10_at_1.02.21_PM.png)
        

### Step 2: Build Compound Actions

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![image 4.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/image_4.png)
    
- Give your Compound Action a **Name** and **Description** , then click `Next`
Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )

  ![Screenshot 2024-12-10 at 11.25.54 AM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-10_at_11.25.54_AM.png)

- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```yaml
    steps:
      - action:
          output_key: fetch_all_projects_based_on_query_result
          action_name: fetch_all_projects_based_on_query
          input_args:
            project_name: data.project_name
      - action:
          output_key: get_all_boards_of_a_specific_project_result
          action_name: get_all_boards_of_a_specific_project
          input_args:
            project_key: data.fetch_all_projects_based_on_query_result.values[0].key
      - action:
          output_key: search_backlog_ideas_based_on_query_result
          action_name: search_backlog_ideas_based_on_query
          input_args:
            board_id: data.get_all_boards_of_a_specific_project_result.values[0].id
            keyword: data.keyword
      - return:
          output_mapper:
            results: data.search_backlog_ideas_based_on_query_result.issues
    ```
    
- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.

  ![Screenshot 2024-12-10 at 11.52.48 AM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-10_at_11.52.48_AM.png)

### Step 3: Publish Workflow to Plugin

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    
    ![Screenshot 2024-12-10 at 12.07.21 PM.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-10_at_12.07.21_PM.png)
    
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2024-12-10 at 12.07.21 PM copy.png](Check%20Backlog%20Ideas%2001577b6af20449d7a17c39f529cd906b/Screenshot_2024-12-10_at_12.07.21_PM_copy.png)
    
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

You've just added the Jira "**Check Backlog Ideas**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.