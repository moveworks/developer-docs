---
description: A plugin that a list of project records in Asana with the ability to
  filter on workspace or team.
fidelity: IDEA
name: Get a list of projects
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A2645%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22List+Asana+projects+for+the+Marketing+team.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Checks+for+available+workspaces+and+teams+in+Asana.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EThe+following+workspaces+exist+within+the+Marketing+team.+Which+workspace+do+you+want+to+list+projects+for%3F%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3EWorkspace+1%3A+Global+Marketing%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3EWorkspace+2%3A+Product+Launches%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3EWorkspace+3%3A+Brand+Strategy%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EGlobal+Marketing%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Filters+projects+in+the+%27Global+Marketing%27+workspace+for+the+%27Marketing%27+team.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EListing+projects+in+%27Global+Marketing%27+workspace+for+the+Marketing+team%3A%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3EProject%3A+Social+Media+Campaign%3C%2Fp%3E%22%2C%22text%22%3A%22%3Cp%3EStatus%3A+In+Progress%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3EProject%3A+Email+Marketing+Automation%3C%2Fp%3E%22%2C%22text%22%3A%22%3Cp%3EStatus%3A+Planning%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3EProject%3A+Influencer+Partnership%3C%2Fp%3E%22%2C%22text%22%3A%22%3Cp%3EStatus%3A+Launched%3C%2Fp%3E%22%7D%5D%7D%5D%7D%7D%5D%7D
solution_tags:
- Productivity
- Project Management
systems:
- asana

---
# Get a list of projects

# **Retrieve Projects in a Team Using Asana API**

The **Get Projects in a Team** plugin enables users to find and retrieve all projects assigned to a specific team in Asana. By leveraging Asana’s API, this feature simplifies project management by quickly identifying and listing the relevant projects within a team.

This guide will walk you through adding this functionality to your bot using Creator Studio.

# **Prerequisites**

- [Postman](https://www.postman.com/) or an API Testing Tool
- [Asana Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=asana) set up in Creator Studio
- An Asana Personal Access Token (PAT)

# **What are we building?**

## **Conversation Design**

**Example User Flow:**

User: *Find projects for the "Product Development" team.*

Bot: *Fetching teams from Asana...*

Bot: *Found the team! The GID for "Product Development" is 123456789.*

# **Creator Studio Components**

- **Triggers:**
    1. Natural Language (e.g., "Find projects for the Product Development team")
- **Slots:**
    1. Team GID
- **Actions:**
    1. Get the list of teams in a workspace
        - Using the workspace GID get all the teams in workspace and based on the users prompt send the team name for confirmation
    2. Get the projects for selected team
        - After user selects the correct team for which they would like

# **API Research**

![Screenshot 2025-03-03 at 4.55.25 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_4.55.25_PM.png)

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

## **API #2: Retrieve Projects in a Team**

The [**Get Multiple Projects](https://developers.asana.com/reference/getprojects)** API is used to fetch all projects under a specific team.

**Request:**

```bash
curl --request GET \
     --url 'https://app.asana.com/api/1.0/projects?workspace=<workspace_gid>&team={{team_gid}}&opt_fields=completed' \
     --header 'accept: application/json' \
     --header 'authorization: Bearer <Your Asana PAT>'
```

**Path Params:**

- `workspace_gid`: The GID of the workspace, replace `<workspace_gid>` with your Asana workplace GID.
- `team_gid`: The GID of the team whose projects you want to retrieve. This will be an input variable taking on the value from the get teams plugin

**API Response Example:**

```json
{
  "data": [
    {
      "gid": "111111111",
      "name": "New Feature Development",
      "resource_type": "project"
    },
    {
      "gid": "222222222",
      "name": "Q2 Product Roadmap",
      "resource_type": "project"
    }
  ]
}

```

# **Steps**

## **Step 1: Build HTTP Action**

- Define your API actions for fetching all the tasks:
    1. **Get teams in workspace**
        - In Creator Studio, create a new Plugin.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to create a new plugin
        - Set up your API Connection to configure the API endpoint based on the following:
            - Click on `Use Existing Connector` > select the [Asana **connector**](https://developer.moveworks.com/creator-studio/resources/connector?id=asana) that you just created > Click on `Apply`. This will populate the Authorization section of the API Editor.
        - **Path**: `/api/1.0/workspaces/<Your workspace GID>/teams`
            - Replace `<Your workspace GID>` with the workspace GID for your organization
        - **Method**: GET
            
            ![Screenshot 2025-03-03 at 4.47.40 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_4.47.40_PM.png)
            
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right.
            
            ![Screenshot 2025-03-03 at 5.09.08 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_5.09.08_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-03-03 at 5.09.38 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_5.09.38_PM.png)
            
    2. **Get Projects in Team**
        - Repeat the steps above to create another plugin.
        - **Path**: `/api/1.0/projects`
        - **Method**: GET
        - **Query** **Parameters** :
            - **Key** (workspace) : Value (workspace GID)
            - **Key** (team) : Value ( {{team_gid}} )
                
                ![Screenshot 2025-03-03 at 5.34.16 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_5.34.16_PM.png)
                
        - **Input Variables** :
            - team_gid: Example Value (**1209453978664838**), data type (string)
                - **Description**: The team_gid is the ID of team we want to check to projects, ALWAYS run "get_team_gid_asana" to get the GID
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. Click on “GENERATE FROM RESPONSE”
            
            ![Screenshot 2025-03-03 at 5.53.28 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_5.53.28_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-03-03 at 5.55.12 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_5.55.12_PM.png)
            

## **Step 2:** Build Compound Action

1. **Compound Action 1:** Get list of teams in workplace 
    - Head over to the **Compound Actions** tab and click **CREATE**
        
        ![image 4.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/image_4.png)
        
    - Give your Compound Action a **Name** and **Description** , then click `Next`
    Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
        
        ![Screenshot 2025-03-03 at 5.56.43 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_5.56.43_PM.png)
        
    - Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
        
        ```yaml
        steps:
          - action:
              output_key: get_teams_in_an_asana_workspace_result
              action_name: get_teams_in_an_asana_workspace
              progress_updates:
                on_complete: ON_COMPLETE_MESSAGE
                on_pending: ON_PENDING_MESSAGE
          - return:
              output_mapper:
                teams_list: data.get_teams_in_an_asana_workspace_result
        ```
        
    - Click the `Submit` button to save your changes.
2. **Compound Action 2:** Get projects from team ID
    - Follow the same steps as for the previous compound action
        
        ![Screenshot 2025-03-03 at 6.00.17 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_6.00.17_PM.png)
        
    - Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
        
        ```yaml
        steps:
          - action:
              output_key: get_projects_filter_team_asana_result
              action_name: get_projects_filter_team_asana
              progress_updates:
                on_complete: ON_COMPLETE_MESSAGE
                on_pending: ON_PENDING_MESSAGE
              input_args:
                team_gid: data.team_gid
          - return:
              output_mapper:
                instructions_for_model: '"ALWAYS run get_team_gid_asana and prompt the user
                  whether their is a team which matches the user query or if multiple
                  teams match the user request ask which team he wants to filter on"'
                list_of_projects: data.get_projects_filter_team_asana_result
        
        ```
        
    - Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.
        
        ![Screenshot 2025-03-03 at 6.01.20 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_6.01.20_PM.png)
        
    

## Step 3: Build Plugin

`NOTE: You need to Publish two plugins each for one compound action`  

1. Plugin 1
    - Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
    - Next, click on `Publish as Plugin`
    - First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
        
        ![Screenshot 2025-03-03 at 6.16.15 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_6.16.15_PM.png)
        
    - Click `Next` and set up your positive and negative triggering examples. This ensures that the bot triggers your plugin given a relevant utterance.
        - See our [guide](https://developer.moveworks.com/creator-studio/conversation-design/triggers/natural-language-triggers/#how-to-write-good-triggering-examples) on Triggering
    - Lastly, click `Next` and set the **Launch Rules** you want your plugin to abide by.
        - See our [guide](https://developer.moveworks.com/creator-studio/administration/launch-options/) on Launch Rules
2. Plugin 2
    - Follow the same steps as plugin for creating the plugin from compound action
        
        ![Screenshot 2025-03-03 at 6.18.51 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_6.18.51_PM.png)
        
    - check the User consent required before execution? checkbox. This will ask the user to confirm all of their slot values before executing to plugin and is considered a best practice to enable.
        
        ![Screenshot 2025-03-03 at 6.19.12 PM.png](Get%20a%20list%20of%20projects%2015b588d8909f802e9d68e619f7af092e/Screenshot_2025-03-03_at_6.19.12_PM.png)
        
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
