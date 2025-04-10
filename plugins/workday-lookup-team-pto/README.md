---
description: A plugin that allows a manager to view PTO balance for associated team
  members.
difficulty_level: INTERMEDIATE
fidelity: TEMPLATE
installation_asset_uuid: 199b3595-638d-4257-9b6c-349ddc7e4b09
installation_link: https://my.moveworks.com/agent-studio/plugin-workspace/plugins?externalAssetId=199b3595-638d-4257-9b6c-349ddc7e4b09
name: Look up Direct Reports PTO Balance
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A7788%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Can+you+share+my+team%27s+PTO+balance%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETeam+PTO+Balance%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Team+PTO+Balance%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Here%27s+your+team%27s+PTO+balance%3A%3Cbr%3E%3Cb%3EAlice+Smith%3A%3C%2Fb%3E+10+days%3Cbr%3E%3Cb%3EBob+Johnson%3A%3C%2Fb%3E+8+days%3Cbr%3E%3Cb%3ECathy+Lee%3A%3C%2Fb%3E+5+days%3Cbr%3EWould+you+like+to+request+PTO+on+behalf+of+your+team%2C+or+perform+another+action%3F%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Select+an+action%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22PTO+Actions%22%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Request+PTO%22%7D%2C%7B%22text%22%3A%22View+PTO+Policy%22%7D%2C%7B%22text%22%3A%22No+action+needed%22%7D%5D%7D%5D%7D%5D%7D%7D%5D%7D
solution_tags:
- HR
- HR - Time & Absence
systems:
- workday
time_in_minutes: 25
---

# Introduction:

Workday is an enterprise platform for human resources, and the "**Look up Team PTO Balance**" feature simplifies retrieving team members' paid time off (PTO) balances. By integrating this feature with your bot, users can efficiently access the PTO balance information for their team members, enhancing organizational management and productivity.

This guide will show you how to add the "**Look up Team PTO Balance**" feature to your bot using Creator Studio. Let's get started!

# **Prerequisites:**

- Workday Connector built in Creator Studio (follow the [Workday Authentication](https://developer.moveworks.com/creator-studio/resources/connector/?id=workday) guide to create your connector)

# **What are we building?**

### **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+share+my+team%27s+PTO+balance%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETeam+PTO+Balance%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Team+PTO+Balance%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+your+team%27s+PTO+balance%3A%3Cbr%3E%3Cb%3EAlice+Smith%3A%3C%2Fb%3E+10+days%3Cbr%3E%3Cb%3EBob+Johnson%3A%3C%2Fb%3E+8+days%3Cbr%3E%3Cb%3ECathy+Lee%3A%3C%2Fb%3E+5+days%3Cbr%3EWould+you+like+to+request+PTO+on+behalf+of+your+team%2C+or+perform+another+action%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Select+an+action%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPTO+Actions%3C%2Fb%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Request+PTO%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22View+PTO+Policy%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No+action+needed%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers:**
    1. Natural Language
- **Slots:**
    1. **Worker Name:** Capture the name of the worker to search for their team members and PTO details.
- **Actions:**
    1. **Search Worker by Name:** Retrieve worker details based on the worker's name
    2. **Retrieve Team Members by Worker ID** **:** Retrieve the direct reports (team members) of the worker using the worker ID
    3. **Retrieve PTO Balance:** Retrieve the PTO details for each direct report using the worker ID from the direct reports
- **Guidelines:**
    1. None

# **API Research**

To build this use case, we will use **three APIs** to achieve the goal of looking up team members' PTO balances in Workday

![image.png](image.png)

## API #1: Search Worker by Name.

The [**Search Worker by Name**](https://community.workday.com/sites/default/files/file-hosting/restapi/#common/v1/get-/workers/-ID-) API retrieves worker details based on a given worker's name from Workday. This API helps in identifying individual workers by their name, enabling a lookup of worker details based on the provided search term

- **Purpose**: Fetches worker details based on the worker's name.
- **Features**: Supports searching for workers by their name and returns relevant worker information.
- **Example**: Queries Workday to retrieve worker details based on the name provided using the following CURL request.

```bash
curl --location 'https://<YOUR_DOMAIN>/api/v1/<INSTANCE_ID>/workers?search=<WORKER_NAME>' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

```

- **<YOUR_DOMAIN>**: Your Workday instance domain (e.g., `yourcompany.myworkday.com`).
- **<INSTANCE_ID>, <WORKER_NAME>, <ACCESS_TOKEN>**: The Workday instance ID, name, and for your search request

## API #2: Retrieve Team Members by Worker ID

The [**Retrieve Team Members**](https://community.workday.com/sites/default/files/file-hosting/restapi/index.html#common/v1/get-/workers/-ID-/directReports) API allows you to retrieve the workers who directly report to a specific **Worker ID**. Using the provided W**orker ID**, this API fetches the list of team members under that worker.

- **Purpose**: Retrieves team members based on the **Worker ID**.
- **Features**: Fetches the direct reports of the worker, returning a list of their team members.
- **Example**: Queries to retrieve the team members under a given **Worker ID**.

```bash
curl --location 'https://<YOUR_DOMAIN>/api/v1/<INSTANCE_ID>/workers/<WORKER_ID>/directReports' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

```

- **<YOUR_DOMAIN>**: Your Workday instance domain (e.g., `yourcompany.myworkday.com`).
- **<WORKDAY_INSTANCE_ID>**, **<WORKER_ID>**: The Workday instance ID and the worker's ID.

## API #3: Retrieve PTO Balance by Worker ID

The [**Retrieve PTO Balance by Worker ID**](https://community.workday.com/sites/default/files/file-hosting/restapi/index.html#absence-management-v1-get-/balances) API allows you to retrieve the PTO balance details for a specific worker based on their **Worker ID**. Using the provided **Worker ID**, this API fetches the worker's PTO balance information.

- **Purpose**: Retrieves the PTO balance for a worker based on the **Worker ID**.
- **Features**: Fetches details of the worker's PTO balance, including the amount of time available and any relevant information regarding their time-off entitlements.
- **Example**: The following CURL request queries Workday to retrieve the PTO balance for a worker using their **Worker ID**:

```bash
curl --location 'https://<YOUR_DOMAIN>/ccx/api/absenceManagement/v1/<INSTANCE_ID>/balances?worker=<WORKER_ID>' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

```

- **<YOUR_DOMAIN>**: Your Workday instance domain (e.g., `yourcompany.myworkday.com`).
- **<INSTANCE_ID>**, **<WORKER_ID>**: The Workday instance ID and the worker's ID

# **Steps**

## **Step 1: Build HTTP Action**

Define your HTTP Actions for fetching **Worker Information** from Workday based on the provided **worker Name**

### 1. **In Creator Studio, Create a New Action**:

- Navigate to **Plugins** section > **Actions** tab.
- Click on **CREATE** to define a new action.

![image.png](image%2099.png)

- Click on the `IMPORT CURL` option and paste the following cURL command:

```bash
curl --location 'https://<YOUR_DOMAIN>/api/v1/<INSTANCE_ID>/workers?search=<WORKER_NAME>' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

```

- Click on `Use Existing Connector` > select the [**Workday** **Connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=workday) that you just created > Click on `Apply`. This will automatically populate the Base URL and the Authorization section of the API Editor.
- **Query Parameters for Retrieving Worker Details**
- **Key (q)**: Value (`<WORKER_NAME>`)
- This query retrieves worker details based on the worker's name, ensuring the response includes the relevant worker information.

![image.png](image%20112.png)

**Input Variables** :

- Full_Name: Example Value (Alex).

![image.png](image%20123.png)

- Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right.
- If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response

![image.png](image%2012345.png)

- Add the **API Name** and **API Description** as shown below, then click the `Save` button

![image.png](image%20789.png)

### **2.** Retrieve Team Members by Worker ID

- Repeat the steps above to create another action.
- Click on the `IMPORT CURL` option and paste the following cURL command:

```bash
curl --location 'https://<YOUR_DOMAIN>/api/v1/<INSTANCE_ID>/workers/<Worker_ID>/directReports' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

```

- Click on `Use Existing Connector` > select the [**Workday** **Connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=workday) that you just created > Click on `Apply`. This will automatically populate the Base URL and the Authorization section of the API Editor.
- This query retrieves the direct reports (team members) for the specified worker ID. By using the `directReports` endpoint, it fetches the workers who report directly to the specified worker.

![image.png](image%202345.png)

- Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right.
- If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.

![image.png](image%207895.png)

- Add the **API Name** and **API Description** as shown below, then click the `Save` button

![image.png](image%20547.png)

### **3. Retrieve PTO Balance** by Worker ID

- Repeat the steps above to create another action.
- Click on the `IMPORT CURL` option and paste the following cURL command:

```bash
curl --location 'https://<YOUR_DOMAIN>/ccx/api/absenceManagement/v1/<INSTANCE_ID>/balances?worker=<WORKER_ID>' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

```

- Click on `Use Existing Connector` > select the [**Workday** **Connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=workday) that you just created > Click on `Apply`. This will automatically populate the Base URL and the Authorization section of the API Editor.
- **Query Parameters for Retrieving PTO Balance**
- **Key (worker)**: Value (`<WORKER_ID>`)
- This query retrieves the PTO balance for the specified worker ID, ensuring the response includes the worker's time-off details, including the available PTO balance information

![image.png](d2eb1e5d-7bee-49bc-b7fb-892ed9ccf02d.png)

**Input Variables** :

- Worker_Id: Example Value (gafgy1346afgh).

![image.png](ba587ba8-45e2-4ae7-8e39-3d6ed6f3533a.png)

- Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right.
- If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.

![image.png](b1197460-16d4-4736-a1fc-984579cb0690.png)

- Add the **API Name** and **API Description** as shown below, then click the `Save` button

![image.png](image%201.png)

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**

![image.png](28271677-c3e8-4f0e-8f2e-bf9f7c92eb10.png)

- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )

![image.png](image%202.png)

- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax.
- At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.

```yaml
steps:
  - action:
      output_key: Get_Worker_ID_result
      action_name: Get_Worker_ID
      progress_updates:
        on_complete: ON_COMPLETE_MESSAGE
        on_pending: ON_PENDING_MESSAGE
      input_args:
        full_name: meta_info.user.full_name
  - switch:
      cases:
        - steps:
            - action:
                output_key: Get_Worker_DirectReports_result
                action_name: Get_Worker_DirectReports
                progress_updates:
                  on_complete: ON_COMPLETE_MESSAGE
                  on_pending: ON_PENDING_MESSAGE
                input_args:
                  worker_id: data.Get_Worker_ID_result.data[0].id
            - for:
                each: direct_report
                steps:
                  - action:
                      action_name: Get_PTO_BALANCES
                      input_args:
                        worker_id: direct_report.id
                      output_key: direct_report_pto_balance
                index: direct_report_index
                in: data.Get_Worker_DirectReports_result.data
                output_key: Get_PTO_BALANCES_result_list
            - return:
                output_mapper:
                  Team_PTO_Balances: data.Get_PTO_BALANCES_result_list
          condition: data.Get_Worker_ID_result.total > 0 and
            data.Get_Worker_ID_result.data != null
      default:
        steps:
          - return:
              output_mapper:
                No_Records_Message:
                  expression: "'Team member PTO balance not found'"

```

- Click on the **`Submit**` button to save your changes after defining the actions that you want to execute during the workflow, such as retrieving worker details, direct reports, and PTO balances

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.

![image.png](a5445ed7-94e8-4b39-9b01-cb53d01bf816.png)

- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.

![image.png](9495ae31-65d5-442b-993c-03eb500b1246.png)

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

You've just added the "Lookup Team PTO Balance" feature inside your Workday platform to your Copilot! Explore our other guides for more inspiration on what to build next.