---
accreditations:
- DEFAULT
description: A plugin that integrates with Service Now Software Asset Management (SAM)
  and allows a team member to look up license inventory.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: 4448c494-e659-4269-b237-9bf964b895c8
name: Check Software License Inventory
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22How+many+licenses+do+we+have+left+for+HyperCAD%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Queries+ServiceNow+for+HyperCAD+software+licenses.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EChecking+HyperCAD+licenses+in+ServiceNow...%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYou+have+%3Cb%3E15%3C%2Fb%3E+remaining+licenses+for+HyperCAD+out+of+%3Cb%3E100%3C%2Fb%3E+total+licenses.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22HyperCAD+Licenses%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance
- Finance - Procurement
- IT
systems:
- servicenow
time_in_minutes: 20
---

# Introduction

Software asset management is crucial for several companies, enabling them to ensure efficiency, reduce costs and plan better. ServiceNow, a robust IT service management (ITSM) platform, provides powerful tools for managing and tracking software assets.

Integrating ServiceNow’s asset management capabilities with Moveworks can empower your employees to manage their softwares better, without IT having to step in.

This guide walks you through to setting up the “Check Software License Inventory” feature on your bot using Creator Studio. This feature can help Copilot’s users to look up available licenses that can be allocated for a particular software.

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- ServiceNow Connector built in Creator Studio (follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector/?id=servicenow) to create your connector)
- **sam_user (Software Asset Management user)** role. More details [here](https://www.servicenow.com/docs/bundle/vancouver-it-asset-management/page/product/software-asset-management2/reference/r_SAMRoles.html).

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22How+many+licenses+do+we+have+left+for+HyperCAD%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Queries+ServiceNow+for+HyperCAD+software+licenses.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EChecking+HyperCAD+licenses+in+ServiceNow...%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYou+have+%3Cb%3E15%3C%2Fb%3E+remaining+licenses+for+HyperCAD+out+of+%3Cb%3E100%3C%2Fb%3E+total+licenses.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22HyperCAD+Licenses%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Software name
- **Actions**:
    1. **Retrieve Software License Details**:
        - Query the license allocations available for a particular software
    2. Guidelines:
        1. None

# **API Research**

For building this plugin, we’ll be using ServiceNow’s REST APIs, specifically the [Table API](https://www.servicenow.com/docs/bundle/xanadu-api-reference/page/integrate/inbound-rest/concept/c_TableAPI.html), which provides methods for accessing and manipulating records in database tables. 

Of the various tables that can be accessed on ServiceNow, for this use case, we are interested in the [alm_license](https://www.servicenow.com/docs/bundle/xanadu-it-asset-management/page/product/software-asset-management2/concept/c_SoftwareAssetMgmt.html) table. It helps in the systemic monitoring, assessing, and administering of software licenses, compliance, and optimization. The API provides filtering options as well, which we will be using to extract meaningful data. 

```bash
curl --request GET \
--url 'https://your-domain.service-now.com/api/now/table/alm_license'
--header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
```

# Steps

Let’s now head over to the Creator Studio to make the plugin. 

## **Step 1: Build HTTP Action**

We first need to define the HTTP Action for fetching all the details of a software license. To do so: 

- In Creator Studio, create a new Action.
    - Navigate to `Plugins` section > `Actions` tab
    - Click on `CREATE` to define a new action
    
    ![image.png](Check%20Software%20License%20Inventory%20103588d8909f81b1bb09fa20f9891c4c/image.png)
    
- Let’s first take care of the Authorization needed for accessing the API. 

Click on `Use Existing Connector` > select the [**ServiceNow**](https://developer.moveworks.com/creator-studio/resources/connector/?id=servicenow) connector that you just created > Click on `Apply`. 

This will populate the Authorization details needed for the API request to be successful.
- Next, click on the `IMPORT CURL` option and paste the following cURL command:

```bash
curl --location --request GET 'https://your-instance.service-now.com/api/now/table/alm_license'
```

- We will now add relevant filtering query parameters which will help us get the result we want.
- Click on the Params tab. We’ll be adding 2 query parameters. They are as follows:
    - Keys:
        - sysparm_query
        - sysparm_fields
    - Values:
        - software_model.display_nameLIKE{{software_license_name}}
        - display_name, allocations_available, rights

Adding these parameters helps us filter the response by the software license name given as input and reduce the response body to output only the display name of the software, allocations available and total rights. This is demonstrated in the screenshot below. 

![image.png](Check%20Software%20License%20Inventory%20103588d8909f81b1bb09fa20f9891c4c/image%201.png)

Notice the {{software_license_name}} value for the sysparm_query parameter. The double curly braces indicate that this value needs to be fetched as an Input Variable. 

- Head over to the Input Variables tab. Here’s what we’ll be adding:
    - Name: software_license_name
    - Description: software_license_name
    - Example Value: Excel
    - Data Type: string

This is shown in the screen shot below. 

![image.png](Check%20Software%20License%20Inventory%20103588d8909f81b1bb09fa20f9891c4c/image%202.png)

- Click on **Test** to verify if the Connector setup was successful. You should see a successful response, as demonstrated below. The request's response will appear on the left side, and the generated output schema will be displayed on the right. 

If the output schema does not align with the API response or fails to populate automatically, please click the **GENERATE FROM RESPONSE** button to refresh and synchronize the schema with the API response. Click Save.

![image.png](Check%20Software%20License%20Inventory%20103588d8909f81b1bb09fa20f9891c4c/image%203.png)

- Add the API Name and API Description as shown below, then click the `Save` button.

![image.png](Check%20Software%20License%20Inventory%20103588d8909f81b1bb09fa20f9891c4c/image%204.png)

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**

![image.png](Check%20Software%20License%20Inventory%20103588d8909f81b1bb09fa20f9891c4c/image%205.png)

- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName ). Here’s an example:

![image.png](Check%20Software%20License%20Inventory%20103588d8909f81b1bb09fa20f9891c4c/image%206.png)

Click Next. 

- Click on the **Script Editor** tab. Here, you can build your compound action using YAML syntax. This syntax allows for defining actions (such as HTTP Requests and APIthon Scripts) and workflow logic (including switch statements, for-each loops, return statements, parallel execution, and try/catch blocks). 

For more details, refer to the [Compound Action Syntax Reference](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/).

```bash
steps:
  - action:
      output_key: get_software_license_details
      action_name: get_software_license_inventory_servicenow
      progress_updates:
        on_complete: ON_COMPLETE_MESSAGE
        on_pending: ON_PENDING_MESSAGE
      input_args:
        software_license_name: data.software_license_name
  - return:
      output_mapper:
        MAP():
          converter:
            software_name: item.display_name
            total_allocations: item.rights
            allocations_available: item.allocations_available
          items: data.get_software_license_details.result
```

- Click on the **Input Fields** tab. Here, we will define the required input for our plugin. Here’s what we’ll be adding:
    - Name: software_license_name
    - Description: Name of the software whose available licenses need to be checked
    - Example Value: Excel
    - Data Type: string
    
    Click on Submit
    

## **Step 3: Publish Workflow to Plugin**

- Navigate to the **Compound Actions** tab and click on the kebab menu (︙).
- Next, select **Publish Workflow to Plugin**.
- Then, verify your **Plugin Name** and **Short Description**.

![image.png](Check%20Software%20License%20Inventory%20103588d8909f81b1bb09fa20f9891c4c/image%207.png)

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

Copilot’s users should now be able to get the number of licenses available of a particular software through chat. Explore our other guides for more inspiration on what to build next.