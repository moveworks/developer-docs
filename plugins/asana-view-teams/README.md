---
availability: INSTALLABLE
description: A plugin that lets you see a list of all the teams in your asana workspace.
installation_asset_uuid: d8710c18-9b57-48c9-8078-6cfb45aafe3d
name: See all Teams
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+give+me+a+list+of+all+the+teams+present+in+my+workspace%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+is+a+list+of+all+the+teams+present+in+your+%3Cb%3EMoveworks%3C%2Fb%3E+workspace%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E1.+Engineering+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E2.+Marketing+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E3.+Sales+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E4.+Product+Team%3C%2Fp%3E%5Cn%3Cp%3E5.+Customer+Success+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E6.+Finance+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E7.+Human+Resources%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E8.+IT+Support%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E9.+Legal+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E10.+Operations+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E11.+Data+Science+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E12.+Design+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E13.+Research+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E14.+QA+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E15.+Security+Team%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22If+you+need+more+information+about+any+specific+team%2C+feel+free+to+ask%21%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
- Project Management
systems:
- asana
---

# Introduction

The **List Teams in a Workspace** plugin allows users to retrieve and view a list of all teams within a workspace in Asana. By leveraging Asana’s API, this plugin simplifies workspace management by quickly fetching key details—such as team names, descriptions, and members.

This guide walks you through adding the **View All Teams** feature to your bot using Creator Studio.

Let’s get started!

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- [Asana Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=asana) built in Creator Studio (follow the Asana Authentication guide to create your connector)

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+give+me+a+list+of+all+the+teams+present+in+my+workspace%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+is+a+list+of+all+the+teams+present+in+your+%3Cb%3EMoveworks%3C%2Fb%3E+workspace%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E1.+Engineering+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E2.+Marketing+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E3.+Sales+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E4.+Product+Team%3C%2Fp%3E%5Cn%3Cp%3E5.+Customer+Success+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E6.+Finance+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E7.+Human+Resources%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E8.+IT+Support%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E9.+Legal+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E10.+Operations+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E11.+Data+Science+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E12.+Design+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E13.+Research+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E14.+QA+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E15.+Security+Team%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22If+you+need+more+information+about+any+specific+team%2C+feel+free+to+ask%21%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Creator Studio Components

- **Triggers**:
    1. Natural Language
- **Actions**:
    1. Get the list of teams in a workspace
        - Using the workspace GID get all the teams in workspace and based on the users prompt send the team name for confirmation

# **API Research**

![Screenshot 2025-03-25 at 11.39.27 AM.png](See%20all%20Teams%201b2588d8909f803d965cca4a9ea37330/Screenshot_2025-03-25_at_11.39.27_AM.png)

### **API #1: Get All Teams in a Workspace**

The [**Get Teams in a Workspace**](https://developers.asana.com/reference/getteamsforworkspace) API is used to retrieve all teams in a given workspace.

**Request:**

```bash
curl --request GET \
     --url 'https://app.asana.com/api/1.0/workspaces/{workspace_gid}/teams?opt_fields=organization.name,visibility,name,' \
     --header 'accept: application/json' \
     --header 'authorization: Bearer <Your Asana PAT>'

```

**Path Params:**

- `workspace_gid`:  The GID (Globally Unique Identifier) of the workspace of asana, which can be found using [**https://app.asana.com/api/1.0/workspaces](https://app.asana.com/api/1.0/workspaces?opt_pretty)** when logged into your asana click the link in browser (or) using postman with your asana PAT send a request. The workspace gid will be present in data.gid.
    
    
    **API Response Example:**
    
    ```json
    {
      "data": [
        {
          "gid": "12345",
          "resource_type": "team",
          "name": "Marketing"
        }
      ]
    }
    ```
    

# **Steps**

## **Step 1: Build HTTP Action**

- Define your API actions for fetching all the tasks:
    1. **Get teams in workspace**
        - In Creator Studio, create a new Plugin.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to create a new plugin
        - Set up your API Connection to configure the API endpoint based on the following:
            - Click on `Use Existing Connector` > select the [Asana **connector**](https://developer.moveworks.com/creator-studio/resources/connector?id=asana) that you just created > Click on `Apply`. This will populate the Authorization section of the API Editor.
        - **Path**: `/api/1.0/workspaces/<Your workspace GID>/teams`
            - Replace `<Your workspace GID>` with the workspace GID for your organization
        - **Method**: GET
            
            ![Screenshot 2025-03-03 at 4.47.40 PM.png](See%20all%20Teams%201b2588d8909f803d965cca4a9ea37330/Screenshot_2025-03-03_at_4.47.40_PM.png)
            
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right.
            
            ![Screenshot 2025-03-03 at 5.09.08 PM.png](See%20all%20Teams%201b2588d8909f803d965cca4a9ea37330/Screenshot_2025-03-03_at_5.09.08_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-03-03 at 5.09.38 PM.png](See%20all%20Teams%201b2588d8909f803d965cca4a9ea37330/Screenshot_2025-03-03_at_5.09.38_PM.png)
            
    2. **Get Projects in Team**
        - Repeat the steps above to create another plugin.
        - **Path**: `/api/1.0/projects`
        - **Method**: GET
        - **Query** **Parameters** :
            - **Key** (workspace) : Value (workspace GID)
            - **Key** (team) : Value ( {{team_gid}} )
                
                ![Screenshot 2025-03-03 at 5.34.16 PM.png](See%20all%20Teams%201b2588d8909f803d965cca4a9ea37330/Screenshot_2025-03-03_at_5.34.16_PM.png)
                
        - **Input Variables** :
            - team_gid: Example Value (**1209453978664838**), data type (string)
                - **Description**: The team_gid is the ID of team we want to check to projects, ALWAYS run "get_team_gid_asana" to get the GID
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. Click on “GENERATE FROM RESPONSE”
            
            ![Screenshot 2025-03-03 at 5.53.28 PM.png](See%20all%20Teams%201b2588d8909f803d965cca4a9ea37330/Screenshot_2025-03-03_at_5.53.28_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-03-03 at 5.55.12 PM.png](See%20all%20Teams%201b2588d8909f803d965cca4a9ea37330/Screenshot_2025-03-03_at_5.55.12_PM.png)
            

## **Step 2:** Build Compound Action

1. **Compound Action 1:** Get list of teams in workplace 
    - Head over to the **Compound Actions** tab and click **CREATE**
        
        ![image 4.png](See%20all%20Teams%201b2588d8909f803d965cca4a9ea37330/image_4.png)
        
    - Give your Compound Action a **Name** and **Description** , then click `Next`
    Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
        
        ![Screenshot 2025-03-03 at 5.56.43 PM.png](See%20all%20Teams%201b2588d8909f803d965cca4a9ea37330/Screenshot_2025-03-03_at_5.56.43_PM.png)
        
    - Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
        
        ```yaml
        steps:
          - action:
              output_key: get_teams_in_an_asana_workspace_result
              action_name: get_teams_in_an_asana_workspace
          - return:
              output_mapper:
                teams_list: data.get_teams_in_an_asana_workspace_result
        ```
        
    - Click the `Submit` button to save your changes.

## Step 3: Build Plugin

1. Plugin 1
    - Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
    - Next, click on `Publish as Plugin`
    - First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
        
        ![Screenshot 2025-03-03 at 6.16.15 PM.png](See%20all%20Teams%201b2588d8909f803d965cca4a9ea37330/Screenshot_2025-03-03_at_6.16.15_PM.png)
        
    - Click `Next` and set up your positive and negative triggering examples. This ensures that the bot triggers your plugin given a relevant utterance.
        - See our [guide](https://developer.moveworks.com/creator-studio/conversation-design/triggers/natural-language-triggers/#how-to-write-good-triggering-examples) on Triggering
    - Lastly, click `Next` and set the **Launch Rules** you want your plugin to abide by.
        - See our [guide](https://developer.moveworks.com/creator-studio/administration/launch-options/) on Launch Rules

## **Step 4: See it in action!**

- After clicking the final `Submit` button, your plugin will be published to the bot and triggerable based on your **Launch Rules.**
- You should wait up to **5 minutes** after making changes before trying to test in your bot!
- If you run into an issue:
    1. Check our [troubleshooting guides](https://developer.moveworks.com/creator-studio/troubleshooting/support/)
    2. Understand your issue using Logs
    3. Reach out to Support

# **Congratulations!**

You've just added the Asana "**List Teams in a Workspace**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.