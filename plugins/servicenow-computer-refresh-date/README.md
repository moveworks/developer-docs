---
availability: INSTALLABLE
description: A plugin that lets employees find out when their computer needs to be
  refreshed.
installation_asset_uuid: 1914e5aa-44e9-4735-b49e-5f30d9696ffb
name: Look up Computer Refresh Date
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22When+does+my+computer+need+to+be+refreshed%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searches+ServiceNow+for+computer+refresh+schedule+for+%27John+Doe%27%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+the+refresh+schedule+for+your+computer%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EComputer+Refresh+Details%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EName%3A%3C%2Fb%3E+John+Doe%3Cbr%3E%3Cb%3EComputer+Model%3A%3C%2Fb%3E+Mackbook+Pro%3Cbr%3E%3Cb%3ELast+Refresh+Date%3A%3C%2Fb%3E+January+15%2C+2022%3Cbr%3E%3Cb%3ENext+Scheduled+Refresh%3A%3C%2Fb%3E+January+15%2C+2025%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

## Introduction

The **Look Up Computer Refresh Date** plugin enables employees to quickly check when their company-assigned computer is scheduled for a refresh, all through the Moveworks AI Assistant. This helps users stay informed about upcoming hardware updates or replacements—without needing to contact IT or search through asset management tools.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22When+does+my+computer+need+to+be+refreshed%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searches+ServiceNow+for+computer+refresh+schedule+for+%27John+Doe%27%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+the+refresh+schedule+for+your+computer%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EComputer+Refresh+Details%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EName%3A%3C%2Fb%3E+John+Doe%3Cbr%3E%3Cb%3EComputer+Model%3A%3C%2Fb%3E+Mackbook+Pro%3Cbr%3E%3Cb%3ELast+Refresh+Date%3A%3C%2Fb%3E+January+15%2C+2022%3Cbr%3E%3Cb%3ENext+Scheduled+Refresh%3A%3C%2Fb%3E+January+15%2C+2025%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- **Table Access**: `Read` access to the `sys_user`, `cmdb_ci_computer` and `cmdb_model`  tables.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

# **Customization Process**

We are using custom fields for **Last Refresh Date** and **Next Scheduled Refresh**, if you already have them, you can update the action to use your own field. 

Below are the steps you can follow to create a custom field 

## **Steps to Create Last Refresh Date** and **Next Scheduled Refresh on Computer**

1. **Navigate to a Computer Record**
    - In the left-hand navigation filter, search: `Computers`
    - Open any existing Computer record (or create a new one).
2. **Open the Table Configuration**
    - While viewing the Computer record, click the gear/hamburger menu (☰) in the top-left (next to the form title).
    - Select: `Configure > Table`
    - This opens the Computer table definition.
3. **Add Custom Fields**
    - Scroll down to the Columns tab at the bottom.
    - Click the New button on the right above the Columns list.
    - A new field (column) form opens.
4. **Create the "Last Refresh Date" Field**
    - Column label: Last Refresh Date
    - **Type**: `Date`
    - Column name: Auto-generated as `u_last_refresh_date`
    - Click **Submit**
5. **Create the "Next Scheduled Refresh" Field**
    - Repeat the above steps:
    - **Column label**: `Next Scheduled Refresh`
    - **Type**: `Date`
    - Column name: Auto-generated as `u_next_scheduled_refresh`
    - Click **Submit**

## **Appendix**

### **API #1: Get Account Id by using Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=email=<USER_EMAIL>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'

```

**Query Parameters:**

- `USER_EMAIL`(string) –  Email address of the user to retrieve `sys_id`.

### **API #2: Get Computer Refresh Date for the Specific User**

```bash
curl --location "https://<YOUR_INSTANCE>/api/now/table/cmdb_ci_computer?sysparm_query=assigned_to=<SYS_ID>&sysparm_fields=name,assigned_to.name,u_next_scheduled_refresh,u_last_refresh_date,model_id.name" \
--header "Authorization: Bearer <ACCESS_TOKEN>" \
--header "Accept: application/json"

```

**Query Parameters:**

- `SYS_ID` (string) – The sys_id of the user to whom the computer asset is assigned.