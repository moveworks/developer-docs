---
accreditations:
- DEFAULT
description: A plugin that allows someone to look up the ID of a cost center.
difficulty_level: BEGINNER
fidelity: GUIDE
installation_link: https://my.moveworks.com/crest-nextgen/crest-nextgen/home?externalAssetId=8fb82a59-5feb-4cea-bdfc-6d7a9c4a530e
name: Look Up a Cost Center ID by its Name
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6991%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EWhat+is+the+cost+center+ID+for+Finance%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+ID%3Cb%3E+of+Finance+Cost+Center%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Cost+Center%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EThe+cost+center+ID+for+%3Cb%3EFinance%3C%2Fb%3E+is+%3Cb%3EACN00003%3C%2Fb%3E.%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
solution_tags:
- Finance
- Finance - Procurement
systems:
- servicenow
time_in_minutes: 20
video: https://youtu.be/DDmmd2eRphw
---

# Introduction

Retrieving official department information can be a cause of headache for employees of some organizations, forcing them to interact with numerous entities and jumping several hoops for a simple task. 

By integrating ServiceNow’s financial management features with Moveworks, your employees can conveniently access and manage crucial financial information without unnecessary hurdles.

This guide provides a step-by-step process to set up the “Look Up Cost Center ID by its Name” feature on your bot using Creator Studio. With this functionality, Copilot users can easily find key details about cost centers such as their IDs.

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- ServiceNow Connector built in Creator Studio (follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector/?id=servicenow) to create your connector)
- **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6991%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EWhat+is+the+cost+center+ID+for+Finance%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+ID%3Cb%3E+of+Finance+Cost+Center%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Cost+Center%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EThe+cost+center+ID+for+%3Cb%3EFinance%3C%2Fb%3E+is+%3Cb%3EACN00003%3C%2Fb%3E.%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Department name
- **Actions**:
    1. **Retrieve Cost Center ID of Department**:
        - Query the cost center ID of the department
    2. Guidelines:
        1. None

# **API Research**

For building this plugin, we’ll be using ServiceNow’s REST APIs, specifically the [Table API](https://www.servicenow.com/docs/bundle/xanadu-api-reference/page/integrate/inbound-rest/concept/c_TableAPI.html), which provides methods for accessing and manipulating records in database tables. 

Of the various tables that can be accessed on ServiceNow, for this use case, we are interested in the [`cmn_cost_center`](https://www.servicenow.com/docs/bundle/xanadu-source-to-pay-operations/page/product/accounts-payable-operations/reference/cost-center.html#d191812e38) table. It specifically contains information related to financial cost centers within an organization. It has filtering options as well, which we’ll be using. 

```bash
curl --request GET \
--url 'https://your-domain.service-now.com/api/now/table/cmn_cost_center'
--header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
```

# Steps

Let’s now head over to the Creator Studio to make the plugin. 

## **Step 1: Build HTTP Action**

We first need to define the HTTP Action for fetching all the details of assets with an individual. To do so: 

- In Creator Studio, create a new Action.
    - Navigate to `Plugins` section > `Actions` tab
    - Click on `CREATE` to define a new action
    
    ![image.png](Look%20Up%20a%20Cost%20Center%20ID%20by%20its%20Name%2026eea1a938b042dd97a87de0477c7f89/image.png)
    
- Let’s first take care of the Authorization needed for accessing the API. 

Click on `Use Existing Connector` > select the [**ServiceNow**](https://developer.moveworks.com/creator-studio/resources/connector/?id=servicenow) connector that you just created > Click on `Apply`. 

This will populate the Authorization details needed for the API request to be successful.
- Next, click on the `IMPORT CURL` option and paste the following cURL command:

```bash
curl --location --request GET 'https://your-instance.service-now.com/api/now/table/cmn_cost_center'
```

- We will now add relevant filtering query parameters which will help us get the result we want.
- Click on the Params tab. We’ll be adding 2 query parameters. They are as follows:
    - Keys:
        - sysparm_query
        - sysparm_fields
    - Values:
        - name={{cost_center_name}}
        - account_number

Adding these parameters helps us filter the response by an email address and reduce the response body to output only the name of the asset, its display name and its tag. This is demonstrated in the screenshot below. 

![image.png](Look%20Up%20a%20Cost%20Center%20ID%20by%20its%20Name%2026eea1a938b042dd97a87de0477c7f89/image%201.png)

Notice the {{cost_center_name}} value for the sysparm_query parameter. The double curly braces indicate that this value needs to be fetched as an Input Variable. 

- Head over to the Input Variables tab. Here’s what we’ll be adding:
    - Name: cost_center_name
    - Description: cost_center_name
    - Example Value: Sales
    - Data Type: string

This is shown in the screen shot below. 

![image.png](Look%20Up%20a%20Cost%20Center%20ID%20by%20its%20Name%2026eea1a938b042dd97a87de0477c7f89/image%202.png)

- Click on **Test** to verify if the Connector setup was successful. You should see a successful response, as demonstrated below. The request's response will appear on the left side, and the generated output schema will be displayed on the right. 

If the output schema does not align with the API response or fails to populate automatically, please click the **GENERATE FROM RESPONSE** button to refresh and synchronize the schema with the API response. Click Save.

![image.png](Look%20Up%20a%20Cost%20Center%20ID%20by%20its%20Name%2026eea1a938b042dd97a87de0477c7f89/image%203.png)

- Add the **API Name** and **API Description** as shown below, then click the `Save` button.

![image.png](Look%20Up%20a%20Cost%20Center%20ID%20by%20its%20Name%2026eea1a938b042dd97a87de0477c7f89/image%204.png)

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**

![image.png](Look%20Up%20a%20Cost%20Center%20ID%20by%20its%20Name%2026eea1a938b042dd97a87de0477c7f89/image%205.png)

- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName ). Here’s an example:

![image.png](Look%20Up%20a%20Cost%20Center%20ID%20by%20its%20Name%2026eea1a938b042dd97a87de0477c7f89/image%206.png)

Click Next. 

- Click on the **Script Editor** tab. Here, you can build your compound action using YAML syntax. This syntax allows for defining actions (such as HTTP Requests and APIthon Scripts) and workflow logic (including switch statements, for-each loops, return statements, parallel execution, and try/catch blocks). 

For more details, refer to the [Compound Action Syntax Reference](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/).

```bash
steps:
  - action:
      output_key: get_cost_center_by_name_result
      action_name: get_cost_center_ID_by_name
      progress_updates:
        on_complete: ON_COMPLETE_MESSAGE
        on_pending: ON_PENDING_MESSAGE
      input_args:
        cost_center_name: data.cost_center
  - return:
      output_mapper:
        cost_center_id: data.get_cost_center_by_name_result
```

- Click on the **Input Fields** tab. Here, we will define the required input for our plugin. Here’s what we’ll be adding:
    - Name: cost_center_name
    - Description: Name of cost center
    - Example Value: Sales
    - Data Type: string
    
    Click on Submit
    

## **Step 3: Publish Workflow to Plugin**

- Navigate to the **Compound Actions** tab and click on the kebab menu (︙).
- Next, select **Publish Workflow to Plugin**.
- First, verify your **Plugin Name** and **Short Description**.

![image.png](Look%20Up%20a%20Cost%20Center%20ID%20by%20its%20Name%2026eea1a938b042dd97a87de0477c7f89/image%207.png)

Note: Decide whether to select the **User consent required before execution?** checkbox. Enabling this option prompts users to confirm all slot values before the plugin executes, which is widely considered a best practice.

- Click **Next** and set up your positive and negative triggering examples. This ensures that the bot activates your plugin in response to relevant utterances.

Refer to our guide on [**Triggering**](https://developer.moveworks.com/creator-studio/conversation-design/triggers/natural-language-triggers/#how-to-write-good-triggering-examples) for more information.
- Finally, click **Next** and configure the Launch Rules that you want your plugin to adhere to.

Refer to our guide on [**Launch Rules**](https://developer.moveworks.com/creator-studio/administration/launch-options/) for additional details

## **Step 4: See it in Action!**

After clicking the final **Submit** button, your plugin will be published to the bot and will be trigger-able based on your Launch Rules.

Please wait up to 5 minutes after making changes before testing in your bot.

If you encounter any issues:

- Check our [**troubleshooting guides**](https://developer.moveworks.com/creator-studio/troubleshooting/support/)
- Use **Logs** to understand the issue
- Reach out to **Support**

## Congratulations!

Copilot’s users should now be able to get the cost center ID of a department by name through chat. Explore our other guides for more inspiration on what to build next.