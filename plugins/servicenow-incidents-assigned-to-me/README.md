---
availability: INSTALLABLE
description: A plugin that allows users to look up incidents assigned to them.
installation_asset_uuid: d851e4a3-98b9-41db-8f90-df36c5c51701
name: Get Incidents Assigned to Me
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+the+incidents+assigned+to+me%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearching+for+incidents+assigned+to+you+in+ServiceNow%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+incidents+assigned+to+you+in+%3Cb%3EServiceNow%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3EINC0010023+-+Email+server+is+down%3C%2Fli%3E%3Cli%3EINC0010045+-+User+unable+to+log+in+to+VPN%3C%2Fli%3E%3Cli%3EINC0010051+-+Printer+in+Building+B+is+not+working%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0010023%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010045%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010051%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Ticketing
systems:
- servicenow
---

## **Introduction:**

The **“Get Incident Assigned to Me”** plugin enables users to instantly view incidents assigned to them in ServiceNow directly through the Moveworks AI Assistant, eliminating the need to manually log in and search. With a simple query, users can access key incident details such as the incident number, short description, assignment status, and assigned group—helping them stay organized and accelerate issue resolution

This guide will walk you through the installation and configuration of the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites :**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+the+incidents+assigned+to+me%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearching+for+incidents+assigned+to+you+in+ServiceNow%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+incidents+assigned+to+you+in+%3Cb%3EServiceNow%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3EINC0010023+-+Email+server+is+down%3C%2Fli%3E%3Cli%3EINC0010045+-+User+unable+to+log+in+to+VPN%3C%2Fli%3E%3Cli%3EINC0010051+-+Printer+in+Building+B+is+not+working%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0010023%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010045%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010051%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please refer to our [**ServiceNow Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once the connector is configured, proceed with the plugin installation to complete the setup efficiently.

For this plugin, ensure the ServiceNow integration user has the following permissions:

- **Read** access to the `incident` table

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for complete setup instructions.

## **Appendix**

### **API #1: Get Incidents Details by User Email**

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident?sysparm_query=assigned_to.email%3D<USER_EMAIL>&sysparm_fields=number%2Cshort_description%2Curgency%2Cstate%2Cdescription%2Csys_id' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

```

**Query Parameters:**

- `User_Email` (string) – Search **Incidents Details** by **User Email**

### **API #2: Get Comments Details by Using** SYS_ID

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/sys_journal_field?sysparm_query=element_id=<SYS_ID>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

```

**Query Parameters:**

- `sys_id` (string) – Search **Comments Details by Using** SYS_ID
