---
description: A plugin that queries associated assets such as laptops, mice etc for
  a user.
accreditations:
- DEFAULT
difficulty_level: BEGINNER
fidelity: GUIDE
time_in_minutes: 20
name: Look Up My Assets
num_implementations: 2
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A1520%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22What+assets+are+currently+registered+under+my+name%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ECheck+My+User+Assets%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+User+Assets%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EHere%27s+a+list+of+assets+currently+registered+under+your+name%3A%3Cbr%3E%3Cb%3ELaptop%3A%3C%2Fb%3E+Dell+XPS+15%3Cbr%3E%3Cb%3EMouse%3A%3C%2Fb%3E+Wireless+Mouse+-+Logitech+M720%3Cbr%3E%3Cb%3EKeyboard%3A%3C%2Fb%3E+Mechanical+RGB%3Cbr%3E%3Cb%3EHeadphones%3A%3C%2Fb%3E+Noise+Cancelling+Headphones+-+Bose+QC35%3Cbr%3E%3Cbr%3EIs+there+anything+specific+you+would+like+to+do+with+these+assets+or+any+additional+information+you+require%3F%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

# Introduction

Asset management is crucial for several companies, enabling them to ensure efficiency, reduce costs and plan better. ServiceNow, a robust IT service management (ITSM) platform, provides powerful tools for managing and tracking assets.

Integrating ServiceNow’s asset management capabilities with Moveworks can empower your employees to manage their assets better, without IT having to step in.

This guide walks you through to setting up the “Look Up My Assets” feature on your bot using Creator Studio. This feature can help Copilot’s users to look up important asset details, such as its tag and display name. 

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- ServiceNow Connector built in Creator Studio (follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector/?id=servicenow) to create your connector)
- **asset (Asset Manager)** role. More details [here](https://www.servicenow.com/docs/bundle/xanadu-it-service-management/page/product/asset-management/reference/r_InstalledWithAssetManagement.html).

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A1520%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22What+assets+are+currently+registered+under+my+name%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ECheck+My+User+Assets%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+User+Assets%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EHere%27s+a+list+of+assets+currently+registered+under+your+name%3A%3Cbr%3E%3Cb%3ELaptop%3A%3C%2Fb%3E+Dell+XPS+15%3Cbr%3E%3Cb%3EMouse%3A%3C%2Fb%3E+Wireless+Mouse+-+Logitech+M720%3Cbr%3E%3Cb%3EKeyboard%3A%3C%2Fb%3E+Mechanical+RGB%3Cbr%3E%3Cb%3EHeadphones%3A%3C%2Fb%3E+Noise+Cancelling+Headphones+-+Bose+QC35%3Cbr%3E%3Cbr%3EIs+there+anything+specific+you+would+like+to+do+with+these+assets+or+any+additional+information+you+require%3F%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. None
- **Actions**:
    1. **Retrieve Asset Details of the User**:
        - Query the asset details of the user
    2. Guidelines:
        1. None

# **API Research**

For building this plugin, we’ll be using ServiceNow’s REST APIs, specifically the [Table API](https://www.servicenow.com/docs/bundle/xanadu-api-reference/page/integrate/inbound-rest/concept/c_TableAPI.html), which provides methods for accessing and manipulating records in database tables. 

Of the various tables that can be accessed on ServiceNow, for this use case, we are interested in the [**`alm_asset`**](https://www.servicenow.com/docs/bundle/xanadu-it-service-management/page/product/asset-management/reference/r_InstalledWithAssetManagement.html) table. It specifically contains information about the assets—both IT and non-IT—that are managed within ServiceNow. The API provides filtering options as well, which we will be using to extract meaningful data. 

```bash
curl --request GET \
--url 'https://your-domain.service-now.com/api/now/table/alm_asset?sysparm_query=assigned_to.email%3Dexample%40email.com&sysparm_fields=model_category.name%2C%20display_name%2C%20asset_tag\'
--header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
```

# Steps

Let’s now head over to the Creator Studio to make the plugin. 

## **Step 1: Build HTTP Action**

We first need to define the HTTP Action for fetching all the details of assets with an individual. To do so: 

- In Creator Studio, create a new Action.
    - Navigate to `Plugins` section > `Actions` tab
    - Click on `CREATE` to define a new action
        
        ![image.png](Look%20Up%20My%20Assets%20ac9d37cc28494071a3f8429c48af2ef5/image.png)
        
- Let’s first take care of the Authorization needed for accessing the API. 

Click on `Use Existing Connector` > select the [**ServiceNow**](https://developer.moveworks.com/creator-studio/resources/connector/?id=servicenow) connector that you just created > Click on `Apply`. 

This will populate the Authorization details needed for the API request to be successful.
- Next, click on the `IMPORT CURL` option and paste the following cURL command:
    
    ```powershell
    curl --location --request GET 'https://your-instance.service-now.com/api/now/table/alm_asset'
    ```
    

- We will now add relevant filtering query parameters which will help us get the result we want.

Click on the Params tab. We’ll be adding 2 query parameters. They are as follows:
    
    
    | Key | Value |
    | --- | --- |
    | sysparm_query | assigned_to.email={{email_addr}} |
    | sysparm_fields | model_category.name, display_name, asset_tag |
    
    
Adding these parameters helps us filter the response by an email address and reduce the response body to output only the name of the asset, its display name and its tag. This is demonstrated in the screenshot below. 
    
    ![image.png](Look%20Up%20My%20Assets%20ac9d37cc28494071a3f8429c48af2ef5/image%201.png)
    

- Notice the {{email_addr}} value for the sysparm_query parameter. The double curly braces indicate that this value needs to be fetched as an Input Variable. 

Head over to the Input Variables tab. Here’s what we’ll be adding:
    
    
    | Name | Description | Example Value | Data Type |
    | --- | --- | --- | --- |
    | email_addr | email_addr | example@email.com | string |
    
    
This is shown in the screen shot below. 
    
    ![image.png](Look%20Up%20My%20Assets%20ac9d37cc28494071a3f8429c48af2ef5/image%202.png)
    

- Click on **Test** to verify if the Connector setup was successful. You should see a successful response, as demonstrated below. The request's response will appear on the left side, and the generated output schema will be displayed on the right. 

If the output schema does not align with the API response or fails to populate automatically, please click the **GENERATE FROM RESPONSE** button to refresh and synchronize the schema with the API response.

![image.png](Look%20Up%20My%20Assets%20ac9d37cc28494071a3f8429c48af2ef5/image%203.png)

- Add the **API Name** and **API Description** as shown below, then click the `Save` button.
    
    ![image.png](Look%20Up%20My%20Assets%20ac9d37cc28494071a3f8429c48af2ef5/image%204.png)
    

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**

![image.png](Look%20Up%20My%20Assets%20ac9d37cc28494071a3f8429c48af2ef5/image%205.png)

- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName ). Here’s an example:

![Screenshot 2025-01-06 at 11.05.26 AM.png](Look%20Up%20My%20Assets%20ac9d37cc28494071a3f8429c48af2ef5/Screenshot_2025-01-06_at_11.05.26_AM.png)

Click Next. 

- Click on the **Script Editor** tab. Here, you can build your compound action using YAML syntax. This syntax allows for defining actions (such as HTTP Requests and APIthon Scripts) and workflow logic (including switch statements, for-each loops, return statements, parallel execution, and try/catch blocks). 

For more details, refer to the [Compound Action Syntax Reference](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/).

```bash
steps:
  - action:
      output_key: get_my_assets_details_servicenow_result
      action_name: get_my_assets_details_servicenow
      progress_updates:
        on_complete: Completed fetching asset details for user
        on_pending: Fetching asset details for user
      input_args:
        email_addr: meta_info.user.email_addr
  - return:
      output_mapper:
        MAP():
          converter:
            display_name: item.display_name
            model_category.name: item.model_category.name
            asset_tag: item.asset_tag
          items: data.get_my_assets_details_servicenow_result.result
```

## **Step 3: Publish Workflow to Plugin**

- Navigate to the **Compound Actions** tab and click on the kebab menu (︙).
- Next, select **Publish Workflow to Plugin**.
- First, verify your **Plugin Name** and **Short Description**.
    
    ![image.png](Look%20Up%20My%20Assets%20ac9d37cc28494071a3f8429c48af2ef5/image%206.png)
    
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

Copilot’s users should now be able to get details of their assets through chat. Explore our other guides for more inspiration on what to build next.