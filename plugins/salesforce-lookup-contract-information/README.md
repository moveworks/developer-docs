---
description: A plugin that lets you get contract data for a specified account through
  Salesforce.
difficulty_level: BEGINNER
fidelity: GUIDE
installation_link: https://my.moveworks.com/crest-nextgen/crest-nextgen/home?externalAssetId=f94cce19-8330-4db5-bcc6-4b37d209a265
name: Look up Contract Information
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6991%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EHave+a+call+coming+up+-+I+need+the+contract+information+for+IntelliTech.+Please+summarize+the+latest+for+me.+%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EIntelliTech+Contract+Information%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Contract+Information%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Here%27s+the+contract+information+for+IntelliTech+as+stored+in+Salesforce%3A%3Cbr%3E-+%3Cb%3EContract+ID%3A%3C%2Fb%3E+CT-9087%3Cbr%3E-+%3Cb%3EStart+Date%3A%3C%2Fb%3E+2022-01-15%3Cbr%3E-+%3Cb%3EEnd+Date%3A%3C%2Fb%3E+2024-01-14%3Cbr%3E-+%3Cb%3EStatus%3A%3C%2Fb%3E+Active%3Cbr%3E-+%3Cb%3EAnnual+Value%3A%3C%2Fb%3E+%241.2M%3Cbr%3E-+%3Cb%3EAccount+Manager%3A%3C%2Fb%3E+Samantha+Ray%3Cbr%3EDo+you+need+information+on+anything+else%3F%22%7D%5D%7D%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
time_in_minutes: 15
---

# Introduction:

Salesforce is a CRM platform, and the "Look Up Contract Information in Salesforce" plugin helps you efficiently retrieve contract details from your Salesforce account. By integrating this feature with your bot, users can quickly access and manage contract information, enhancing productivity and organization.

This guide will show you how to add the "Look Up Contract Information in Salesforce" feature to your bot using Creator Studio. Let's get started!

# **Prerequisites:**

- Salesforce Connector built in Creator Studio (follow the [Salesforce Authentication](https://developer.moveworks.com/creator-studio/resources/connector/?id=salesforce) guide to create your connector)

# **What are we building?**

### **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHave+a+call+coming+up+-+I+need+the+contract+information+for+IntelliTech.+Please+summarize+the+latest+for+me.+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EIntelliTech+Contract+Information%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Contract+Information%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+the+contract+information+for+IntelliTech+as+stored+in+Salesforce%3A%3Cbr%3E-+%3Cb%3EContract+ID%3A%3C%2Fb%3E+CT-9087%3Cbr%3E-+%3Cb%3EStart+Date%3A%3C%2Fb%3E+2022-01-15%3Cbr%3E-+%3Cb%3EEnd+Date%3A%3C%2Fb%3E+2024-01-14%3Cbr%3E-+%3Cb%3EStatus%3A%3C%2Fb%3E+Active%3Cbr%3E-+%3Cb%3EAnnual+Value%3A%3C%2Fb%3E+%241.2M%3Cbr%3E-+%3Cb%3EAccount+Manager%3A%3C%2Fb%3E+Samantha+Ray%3Cbr%3EDo+you+need+information+on+anything+else%3F%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers:**
    1. Natural Language
- **Slots:**
    1. **Account Name:** Query Account Name to look up contract details.
- **Actions:**
    1. **Retrieve Contract Information:** Look up contract details using the Account Name via Salesforce API.
- **Guidelines:**
    1. None

# **API Research**

To build this use case, we will use an API to achieve the goal of looking up contract information based on the Account Name in Salesforce

![image.png](image.png)

## API #1: Retrieve Contract Information by Account Name

The [Retrieve Contract Information by Account Name](https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_contract.htm) API retrieves contract details for a given **Account Name** from Salesforce using a SOQL query. This API helps in accessing contract information associated with specific Salesforce accounts.

- **Purpose**: Fetches contract details based on **Account Name**.
- **Features**: Supports filtering by **Account Name** and returns relevant contract information.
- **Example**: Queries Salesforce to retrieve contract information for the specified **Account Name**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/query/?q=SELECT+Id+StartDate+Status+EndDate+AccountId+ContractNumber+OwnerId+FROM+Contract+WHERE+Account.Name+LIKE+%27%25<ACCOUNT_NAME>%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

```

- **<YOUR_DOMAIN>**: Your Salesforce instance domain (e.g., `yourcompany.my.salesforce.com`).
- **<ACCOUNT_NAME>**: The name of the account used to look up contract information in Salesforce.

# **Steps**

## **Step 1: Build HTTP Action**

Define your HTTP Actions for fetching Contract Information from Salesforce based on the provided Account Name

### 1. **In Creator Studio, Create a New Action**:

- Navigate to **Plugins** section > **Actions** tab.
- Click on **CREATE** to define a new action.

![image.png](image%201.png)

- Click on the `IMPORT CURL` option and paste the following cURL command:

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/query/?q=SELECT+Id+StartDate+Status+EndDate+AccountId+ContractNumber+OwnerId+FROM+Contract+WHERE+Account.Name+LIKE+%27%25<ACCOUNT_NAME>%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

- Click on `Use Existing Connector` > select the [**Salesforce Connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=salesforce) that you just created > Click on `Apply`. This will populate the Base URL and the Authorization section of the API Editor.
- **Query Parameters for Salesforce Contract Query**
- **Key ( q )**: Value `(SELECT+Id,+StartDate,+Status,+EndDate,+AccountId,+ContractNumber,+OwnerId+FROM+Contract+WHERE+Account.Name+LIKE+%27%25{{Account_name}}%25%27’)`
- This query filters contract records associated with an account based on the **Account Name** and retrieves relevant contract information (such as `Contract Number`, `Start Date`, `End Date`, etc.), ensuring that only the essential contract details are returned for the specified account

![image.png](fb6693f3-d472-436e-86cb-0b0892f69cab.png)

- **Input Variables** :

             Account_name : Example Value (ABC1).

![image.png](5830e752-d29a-4c37-a978-8d69879ba436.png)

- Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right.
- If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.

![image.png](image%202.png)

- Add the **API Name** and **API Description** as shown below, then click the `Save` button

![image.png](image%203.png)

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**

![image.png](image%2011.png)

- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )

![image.png](image%204.png)

- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax.
- At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.

```yaml
steps:
  - action:
      output_key: result
      action_name: Salesforce_Contract_Lookup
      progress_updates:
        on_complete: ON_COMPLETE_MESSAGE
        on_pending: ON_PENDING_MESSAGE
      input_args:
        Account_Name: data.Account_Name
  - return:
      output_mapper:
        Status: data.result.records[0].Status
        Id: data.result.records[0].Id
        AccountId: data.result.records[0].AccountId
        OwnerId: data.result.records[0].OwnerId
        EndDate: data.result.records[0].EndDate
        StartDate: data.result.records[0].StartDate
        ContractNumber: data.result.records[0].ContractNumber
```

- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.

![image.png](image%205.png)

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.

![image.png](image%206.png)

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

You've just added the "Lookup Contract Information" feature based on Account Name to your Salesforce account in your Copilot! Explore our other guides for more inspiration on what to build next.