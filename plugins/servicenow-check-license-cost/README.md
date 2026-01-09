---
availability: INSTALLABLE
description: A plugin that integrates with Service Now Software Asset Management (SAM)
  and allows a team member to identify the price of additional licenses.
installation_asset_uuid: 6e154dfc-c941-425e-ab6a-3c7bc924549c
name: Look Up License Cost
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+the+price+for+additional+Sketch+licenses.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Queries+ServiceNow+SAM+for+Sketch+license+pricing+information.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+provide+the+number+of+licenses+you+need.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E5+licenses%2C+please.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Calculates+the+cost+based+on+the+requested+number+of+licenses+using+ServiceNow+SAM.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+total+cost+for+5+additional+Sketch+licenses+is+%24450.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ELicense+Details%3A%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ESoftware%3A%3C%2Fb%3E+Sketch%3Cbr%3E%3Cb%3ELicenses%3A%3C%2Fb%3E+5%3Cbr%3E%3Cb%3ETotal+Cost%3A%3C%2Fb%3E+%24450%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Proceed+with+Purchase%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Check+Another+Software%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Finance - Other
- IT
systems:
- servicenow
---

# **Introduction:**

**The Look Up License Cost**  enables users to quickly retrieve cost-related details of software licenses in ServiceNow through the Moveworks AI Assistant.

This guide will walk you through the installation and configuration of the plugin in Agent Studio in just a few minutes. Let’s get started!

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+the+price+for+additional+Sketch+licenses.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Queries+ServiceNow+SAM+for+Sketch+license+pricing+information.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+provide+the+number+of+licenses+you+need.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E5+licenses%2C+please.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Calculates+the+cost+based+on+the+requested+number+of+licenses+using+ServiceNow+SAM.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+total+cost+for+5+additional+Sketch+licenses+is+%24450.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ELicense+Details%3A%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ESoftware%3A%3C%2Fb%3E+Sketch%3Cbr%3E%3Cb%3ELicenses%3A%3C%2Fb%3E+5%3Cbr%3E%3Cb%3ETotal+Cost%3A%3C%2Fb%3E+%24450%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Proceed+with+Purchase%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Check+Another+Software%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) [**Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the ServiceNow integration user has the following permissions:

- **Read** access to the `alm_license` table

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Appendix**

### **API #1: Get License Details by Display Name**

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/alm_license?sysparm_query=model.display_nameLIKE%20<SOFTWARE_NAME>' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameters:**

- `Software_Name` (string) – Search **License Details** by display name