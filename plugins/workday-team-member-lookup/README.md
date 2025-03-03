---
accreditations:
- sarthaksrinivas
- DEFAULT
description: A plugin which allows you to view team members (peers and delegates).
difficulty_level: INTERMEDIATE
fidelity: GUIDE
name: Look up Team Members
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+is+on+Ellen%27s+team%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearches+Workday+for+relevant+information+on+the+user%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+have+found+out+that+there+are+multiple+Ellens+in+your+organization.+For+whom+do+you+want+me+to+fetch+the+team+members+for%3F%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EEllen+H%2C+Sales+Director%3C%2Fli%3E%5Cn++%3Cli%3EEllen+M%2C+Engineering+Lead%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+see+the+team+members+of+Ellen+H+who+is+a+Sales+Director.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearches+Workday+for+team+members+information%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+team+members+of+Ellen+H%2C+Sales+Director%3A%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EJacob+R%3C%2Fli%3E%5Cn++%3Cli%3ERudolph+J%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%5D%7D%5D%7D
solution_tags:
- HR
- HR - Employee Records
- HR - Onboarding
systems:
- workday
time_in_minutes: 25
---

# Introduction:

Workday is an enterprise platform for human resources, and the "Look up Team Members" feature simplifies retrieving team member information. By integrating this feature with your bot, users can efficiently access team member details, enhancing organizational management and productivity.

This guide will show you how to add the "Look up Team Members" feature to your bot using Creator Studio. Let's get started!

# **Prerequisites:**
- Workday Connector built in Creator Studio (follow the [Workday Authentication](https://developer.moveworks.com/creator-studio/resources/connector/?id=workday) guide to create your connector)

# **What are we building?**

### **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+is+on+my+team%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearches+Workday+for+relevant+information%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou%27re+part+of+an+amazing+team+led+by+%3Cb%3EEllen+Hows%3C%2Fb%3E.+Here+are+your+wonderful+teammates%3A%3Cbr%3E-+Gwen%3Cbr%3E-+Dave%3Cbr%3E-+Ivy%3Cbr%3E-+Ajay%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers:**
    1. Natural Language
- **Slots:**
    1. **Manager and Job Title:** Capture the manager’s name and job title to search for their associated workers based on these criteria
    2. **Team Member Details:** Capture and store the necessary details to look up team members, including their job title, based on the manager's information.
- **Actions:**
    1. **Search Worker by Manager Name and Job Title:** Retrieve worker details based on the manager's name and job title via Workday API.
    2. **Get Direct Reports:** Retrieve the direct reports (team members) of the manager using the worker ID from the first action via Workday API.
- **Guidelines:**
    1. None

# **API Research**

To build this use case, we will use **two APIs** to achieve the goal of looking up team members in Workday

![image.png](image.png)

## API #1: Search Worker by Manager Name and Job Title.

The [**Search Worker by Manager Name and Job Title**](https://marketplace-setup.workday.com/en-US/apps/414259/workday-query-language-(wql)/overview) API retrieves worker details for a given manager's name and job title from Workday. This API helps in identifying the workers associated with a specific manager, enabling the lookup of team members based on their manager's name and job title.

- **Purpose**: Fetches worker details based on the manager's name and job title.
- **Features**: Supports searching for workers by manager's name and job title and returns relevant worker information.
- **Example**: Queries Workday to retrieve worker details based on the manager's name and job title using the following cURL request

```bash
curl --location 'https://<YOUR_DOMAIN>/ccx/api/wql/v1/<WORKDAY_INSTANCE_ID>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '
{
  "query": "SELECT worker, fullName, employeeID, jobTitle, location, hireDate, email FROM allActiveEmployees WHERE fullName LIKE \"%{{MANAGER_NAME}}%\" AND jobTitle LIKE \"%{{JOB_TITLE}}%\""
}'

```

- **<YOUR_DOMAIN>**: Your Workday instance domain (e.g., `yourcompany.myworkday.com`).
- **<WORKDAY_INSTANCE_ID>**, **<MANAGER_NAME>**, **<JOB_TITLE>**: The Workday instance ID, manager's name, and manager's job title for your search request

## API #2: Retrieve Team Members by Manager ID

The [**Retrieve Team Members**](https://community.workday.com/sites/default/files/file-hosting/restapi/index.html#common/v1/get-/workers/-ID-/directReports) API allows you to retrieve the workers who directly report to a specific **Manager ID**. Using the provided **Manager ID**, this API fetches the list of team members under that manager

- **Purpose**: Retrieves team members based on the **Manager ID**.
- **Features**: Fetches the direct reports of the manager, returning a list of their team members.
- **Example**: Queries to retrieve the team members under a given **Manager ID**.

```bash
curl --location 'https://<YOUR_DOMAIN>/api/v1/<INSTANCE_ID>/workers/<MANAGER_ID>/directReports' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

```

- **<YOUR_DOMAIN>**: Your Workday instance domain (e.g., `yourcompany.myworkday.com`).
- **<WORKDAY_INSTANCE_ID>**, **<MANAGER_ID>**: The Workday instance ID and the manager's ID.

# **Steps**

## **Step 1: Build HTTP Action**

Define your HTTP Actions for fetching **Worker Information** from Workday based on the provided **Manager Name**

### 1. **In Creator Studio, Create a New Action**:

- Navigate to **Plugins** section > **Actions** tab.
- Click on **CREATE** to define a new action.

![image.png](3bd5b4fb-c0cc-45c9-8be7-a5fd109fc141.png)

- Click on the `IMPORT CURL` option and paste the following cURL command:

```bash
curl --location 'https://<YOUR_DOMAIN>/ccx/api/wql/v1/<WORKDAY_INSTANCE_ID>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '
{
  "query": "SELECT worker, fullName, employeeID, jobTitle, location, hireDate, email FROM allActiveEmployees WHERE fullName LIKE \"%{{MANAGER_NAME}}%\" AND jobTitle LIKE \"%{{JOB_TITLE}}%\""
}'

```

- Click on `Use Existing Connector` > select the [**Workday** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=workday) that you just created > Click on `Apply`. This will automatically populate the Base URL and the Authorization section of the API Editor.
- **Query Parameters for Retrieving Team Members**
- **Key (q):** Value (`<Manager_Name>&jobTitle=<Job_Title>`)
- This query filters workers based on the manager's name and job title, ensuring the response includes only the direct reports (team members) of the specified manager and job title.

![image.png](9b705af2-30b9-4fdf-b994-0bfe9746f008.png)

**Input Variables** :

- **Manager_Name**: Example Value (Alex).
- **Job_Title**: Example Value (Manager, Global Support)

![image.png](d3f7e24e-d94d-4bdc-99f5-1db8f8725d49.png)

- Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right.
- If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.

![image.png](624e13cd-237b-4cef-8cd6-a2f8f9f1e53f.png)

- Add the **API Name** and **API Description** as shown below, then click the `Save` button

![image.png](image%201.png)

### **2.** Retrieve Team Members by Manager ID

- Repeat the steps above to create another action.
- Click on the `IMPORT CURL` option and paste the following cURL command:

```bash
curl --location 'https://<YOUR_DOMAIN>/api/v1/<INSTANCE_ID>/workers/<MANAGER_ID>/directReports' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

```

- Click on `Use Existing Connector` > select the **Workday** **connector** that you just created > Click on `Apply`. This will automatically populate the Base URL and the Authorization section of the API Editor.
- This query retrieves the direct reports (team members) for the specified worker ID. By using the `directReports` endpoint, it fetches the workers who report directly to the specified worker.

![image.png](image%202.png)

- Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right.
- If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.

![image.png](2c10e351-82cd-4bf1-8469-cae7619eaf0b.png)

- Add the **API Name** and **API Description** as shown below, then click the `Save` button

![image.png](image%203.png)

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**

![image.png](464b94c0-9292-4097-bdf2-a106201e8c99.png)

- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )

![image.png](image%204.png)

- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax.
- At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.

```yaml
steps:
  - action:
      output_key: Get_Worker_Data_result
      action_name: Get_Worker_Data
      progress_updates:
        on_complete: ON_COMPLETE_MESSAGE
        on_pending: ON_PENDING_MESSAGE
      input_args:
        jobTitle: data.jobTitle
        fullName: data.fullName
  - action:
      output_key: Get_Worker_DirectReports_result
      action_name: Get_Worker_DirectReports
      progress_updates:
        on_complete: ON_COMPLETE_MESSAGE
        on_pending: ON_PENDING_MESSAGE
      input_args:
        worker_id: data.Get_Worker_Data_result.data[0].worker.id
  - return:
      output_mapper:
        MAP():
          converter:
            id: item.id
            name: item.descriptor.$TITLECASE()
          items: data.Get_Worker_DirectReports_result.data
  
```

- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.

![image.png](793b6ef2-461c-46a2-ba57-4c009ce0b1d5.png)

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.

![image.png](56d956a1-13a7-456c-88e9-8f19732596f2.png)

- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.

![image.png](b30f7cc2-7ddc-4184-b599-c01f24763e3d.png)

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

You've just added the "Lookup Team Members" feature inside your Workday platform to your Copilot! Explore our other guides for more inspiration on what to build next.