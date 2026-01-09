---
availability: INSTALLABLE
description: A plugin that returns a list of all open tasks within the user's task
  list.
installation_asset_uuid: a88f8053-ead5-4185-aada-801293b9da35
name: See all my tasks
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+my+Asana+tasks.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFetching+tasks+from+Asana+assigned+to+you...%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+your+open+tasks%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ETask+1%3A+Finalize+quarterly+report%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EDue+Date%3A+2024-04-30%3Cbr%3EProject%3A+Q2+Financials%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ETask+2%3A+Update+project+roadmap%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EDue+Date%3A+2024-05-15%3Cbr%3EProject%3A+Product+Development%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ETask+3%3A+Prepare+team+presentation%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EDue+Date%3A+2024-04-20%3Cbr%3EProject%3A+Marketing%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Productivity
- Project Management
systems:
- asana
---

# See all my tasks

# Introduction

The **View All My Tasks** plugin enables users to retrieve and view a list of all their open tasks from Asana. By leveraging Asana’s API, this plugin simplifies the process of managing tasks by quickly fetching the most relevant details—such as task name, assignee, due dates, and completion status—through an intuitive, conversational interface.

This guide walks you through adding the **View All My Tasks** feature to your bot using Creator Studio.

Let’s dive in!

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- [Asana Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=asana) built in Creator Studio (follow the Asana Authentication guide to create your connector)

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+my+Asana+tasks.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFetching+tasks+from+Asana+assigned+to+you...%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+your+open+tasks%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ETask+1%3A+Finalize+quarterly+report%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EDue+Date%3A+2024-04-30%3Cbr%3EProject%3A+Q2+Financials%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ETask+2%3A+Update+project+roadmap%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EDue+Date%3A+2024-05-15%3Cbr%3EProject%3A+Product+Development%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ETask+3%3A+Prepare+team+presentation%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EDue+Date%3A+2024-04-20%3Cbr%3EProject%3A+Marketing%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# Creator Studio Components

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Fetch user ID or email.
- **Actions**:
    1. **Retrieve User's Task List**:
        - Use the user’s ID or email to retrieve their tasks from Asana.
    2. **Fetch Task Details**:
        - Use the task list data to filter and fetch the details of all open tasks.
        - Fields include task name, assignee, due date, and completion status.
    3. Guidelines:
        - Provide a summary of all open tasks.

# **API Research**

To build this plugin, we will utilize two APIs from Asana. These APIs will allow us to retrieve the user’s task list (Their is one task list for a user) and get detailed information about tasks in this list.

![Screenshot 2025-02-28 at 2.37.12 PM.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/Screenshot_2025-02-28_at_2.37.12_PM.png)

### **API #1: Get a User’s Task List**

The [**Get a User's Task List**](https://developers.asana.com/reference/getusertasklistforuser) API is used to retrieve the full task list of a specific user. This API can be accessed by providing the user’s GID (or email) and the appropriate workspace GID.

**Request:**

```bash
curl --request GET \
  --url 'https://app.asana.com/api/1.0/users/{{user_gid}}/user_task_list' \
  --header 'accept: application/json' \
  --header 'authorization: Bearer <Your Asana PAT>'
```

**Path Params:**

- `user_gid`: The GID (Globally Unique Identifier) of the user whose task list is being fetched. This can either be the string "me", an email address, or the GID of a specific user.

**Query Params:**

- `workspace` : The GID (Globally Unique Identifier) of the workspace of asana, which can be found using [**https://app.asana.com/api/1.0/workspaces](https://app.asana.com/api/1.0/workspaces?opt_pretty)** when logged into your asana click the link in browser (or) using postman with your asana PAT send a request. The workspace gid will be present in data.gid.
    
    **API response:** 
    
    ```json
    {
      "data": [
        {
          "gid": "67890",
          "resource_type": "task",
          "name": "My Company Workspace"
        }
      ],
      "next_page": {
        "offset": "eyJ0eXAiOJiKV1iQLCJhbGciOiJIUzI1NiJ9",
        "path": "/tasks/12345/attachments?limit=2&offset=eyJ0eXAiOJiKV1iQLCJhbGciOiJIUzI1NiJ9",
        "uri": "https://app.asana.com/api/1.0/tasks/12345/attachments?limit=2&offset=eyJ0eXAiOJiKV1iQLCJhbGciOiJIUzI1NiJ9"
      }
    }
    ```
    

### **API #2: Get Tasks in a User’s Task List**

Once you have the user’s task list GID from API #1, you can call [**Get tasks from a user task list**](https://developers.asana.com/reference/gettasksforusertasklist) API to retrieve detailed information about the tasks within the task list.

**Request:**

```bash
curl --request GET \
     --url 'https://app.asana.com/api/1.0/user_task_lists/{{user_task_list_gid}}/tasks?opt_fields=memberships.project.name,name,completed_at,completed_by.name,completed_at,memberships.section.name,created_at,completed_by,due_on' \
     --header 'accept: application/json' \
     --header 'authorization: Bearer <Your Asana PAT>'
```

**Path Params:**

- `user_task_list_gid`: The GID (Globally Unique Identifier) of the task list which we want to check the tasks, here it will be the GID from previous API response.

**Query Params:**

- `opt_fields`: A comma-separated list of task fields to include in the response. This can include`memberships.project.name`,`name`,`completed_at`,`completed_by.name`,`completed_at`,`memberships.section.name`,`created_at`,`completed_by,due_on`.
- `workspace`: The workspace GID where the task list resides.

This API will return a list of tasks with all the requested details.

# **Steps**

## **Step 1: Build HTTP Action**

- Define your API actions for fetching all the tasks:
    1. **Get tasks list gid**
        - In Creator Studio, create a new Plugin.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to create a new plugin
        - Set up your API Connection to configure the API endpoint based on the following:
            - Click on `Use Existing Connector` > select the [Asana **connector**](https://developer.moveworks.com/creator-studio/resources/connector?id=asana) that you just created > Click on `Apply`. This will populate the Authorization section of the API Editor.
        - **Path**: `/api/1.0/users/{{user_gid}}/user_task_list`
            - Where `{{user_gid}}` is a Path parameter which is populated via the input variable
        
        - **Method**: GET
        - **Query** **Parameters** :
            - Key (workspace): Value (<Your asana workspace gid>)
            
            ![Screenshot 2025-03-03 at 12.18.42 PM.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/Screenshot_2025-03-03_at_12.18.42_PM.png)
            
        - **Input Variables** :
            - **user_gid**: Example Value ( [alex@moveworks.ai](mailto:alex@moveworks.ai) )
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right.
        - You can prune the output schema to remove properties which aren’t required (we only need the gid in data)
            
            ![Screenshot 2025-03-03 at 12.27.38 PM.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/Screenshot_2025-03-03_at_12.27.38_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-03-03 at 12.36.26 PM.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/Screenshot_2025-03-03_at_12.36.26_PM.png)
            
    2. **Get list of tasks**
        - Repeat the steps above to create another plugin.
        - **Path**: `/api/1.0/user_task_lists/{{user_task_list_gid}}/tasks`
            - Where `{{user_task_list_gid}}` is a Path parameter which is populated via the input variable
        - **Method**: GET
        - **Query** **Parameters** :
            - **Key** (opt_fields) : Value (memberships.project.name,name,memberships.section.name,completed,created_at,completed_by,completed_by.name,completed_at,due_on,)
            - **Key** (completed_since) : Value ( {{from_date_of_tasks}} )
            
            ![Screenshot 2025-03-03 at 12.53.45 PM.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/Screenshot_2025-03-03_at_12.53.45_PM.png)
            
        - **Input Variables** :
            - **from_date_of_tasks** : Example Value ( 2012-02-22T02:06:58.158Z ), data type (string)
                - **Description**: If the request is for incomplete tasks only, use "now" as the from_date_of_task. If both incomplete and completed tasks are needed within a specific timeframe, use the given date in the format YYYY-MM-DDTHH:MM:SS.sssZ (e.g., 2012-02-22T02:06:58.158Z). If only completed tasks are required and no date is provided, use a date from 1 month ago. If a specific timeframe is mentioned, such as "Give me a list of tasks completed 2 months ago," select the corresponding date accordingly. If no date is provided, default to 1 month ago.
            - **user_task_list_gid:** Example Value (**1209453978664838**), data type (string)
                
                ![Screenshot 2025-03-03 at 12.53.45 PM.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/Screenshot_2025-03-03_at_12.53.45_PM%201.png)
                
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. Click on “GENERATE FROM RESPONSE”
            
            ![Screenshot 2025-03-03 at 12.53.45 PM.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/Screenshot_2025-03-03_at_12.53.45_PM%202.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-03-03 at 1.15.45 PM.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/Screenshot_2025-03-03_at_1.15.45_PM.png)
            
        

## **Step 2:** Build Compound Action

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![image 4.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/image_4.png)
    
- Give your Compound Action a **Name** and **Description** , then click `Next`
Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![Screenshot 2025-03-03 at 1.18.11 PM.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/Screenshot_2025-03-03_at_1.18.11_PM.png)
    
- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```yaml
    steps:
      - action:
          action_name: get_user_task_list_asana
          input_args:
            user_gid: meta_info.user.email_addr
          output_key: get_user_task_list_asana_result
      - action:
          output_key: get_tasks_from_user_task_list_asana_result
          action_name: get_tasks_from_user_task_list_asana
          progress_updates:
            on_complete: ON_COMPLETE_MESSAGE
            on_pending: ON_PENDING_MESSAGE
          input_args:
            user_task_list_gid: data.get_user_task_list_asana_result.data.gid
            from_date_of_tasks: data.from_date_of_tasks
      - return:
          output_mapper:
            list_of_user_tasks_result: data.get_tasks_from_user_task_list_asana_result
    
    ```
    
- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.
    
    ![Screenshot 2025-03-03 at 1.20.08 PM.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/Screenshot_2025-03-03_at_1.20.08_PM.png)
    

## Step 3: Build Plugin

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish as Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    
    ![Screenshot 2025-03-03 at 1.36.33 PM.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/Screenshot_2025-03-03_at_1.36.33_PM.png)
    
- Next, decide if you want to check the User consent required before execution? checkbox. This will ask the user to confirm all of their slot values before executing to plugin and is considered a best practice to enable.
    
    ![Screenshot 2025-03-03 at 1.37.04 PM.png](See%20all%20my%20tasks%2015b588d8909f805b920ed0b9ae76abc5/Screenshot_2025-03-03_at_1.37.04_PM.png)
    
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

You've just added the Asana "**Get User Tasks**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.