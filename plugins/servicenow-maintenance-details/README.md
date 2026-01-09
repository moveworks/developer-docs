---
availability: INSTALLABLE
description: A plugin that allows looking up maintenance records and schedules for
  an asset.
installation_asset_uuid: b9d54358-c23a-4efc-b3ec-33b1e6c61c5e
name: Look Up Maintenance Details of My Asset
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+see+the+maintenance+details+for+my+assets%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+Here+are+the+assets+assigned+to+you+in+%3Cb%3EServiceNow%3C%2Fb%3E.+Which+one+are+you+looking+for%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22MacBook+Pro+16-inch+%28C02G308QJYVW%29%22%7D%2C%7B%22buttonText%22%3A%22Dell+Monitor+U308F%22%7D%2C%7B%22buttonText%22%3A%22iPhone+14+Pro+%28F17Y53N4P2%29%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EMacBook+Pro+16-inch+%28C02G308QJYVW%29%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+asset+%27MacBook+Pro+16-inch+%28C02G308QJYVW%29%27+in+ServiceNow.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Fetching+maintenance+records+and+schedule.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+maintenance+details+for+%3Cb%3EMacBook+Pro+16-inch+%28C02G308QJYVW%29%3C%2Fb%3E.%3C%2Fp%3E%3Cp%3E%3Cb%3EPast+Maintenance%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAug+15%2C+2023%3A%3C%2Fb%3E+Battery+replacement+%28INC0010045%29%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EUpcoming+Schedule%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EOct+28%2C+2024%3A%3C%2Fb%3E+Logic+board+diagnostics+%28CHG0030012%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22MacBook+Pro+16-inch+%28C02G308QJYVW%29%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

# **Introduction :**

The **“Look Up Maintenance Details of My Asset”** plugin enables employees and support teams to quickly access maintenance history and upcoming service schedules for assets using the Moveworks AI Assistant. This plugin streamlines support by allowing users to retrieve detailed maintenance information directly from the Assistant, without needing to navigate through complex asset management systems.

This guide will walk you through installing and configuring the plugin in Agent Studio, so your team can enhance asset visibility, reduce downtime, and ensure timely maintenance updates for end users.

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+see+the+maintenance+details+for+my+assets%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+Here+are+the+assets+assigned+to+you+in+%3Cb%3EServiceNow%3C%2Fb%3E.+Which+one+are+you+looking+for%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22MacBook+Pro+16-inch+%28C02G308QJYVW%29%22%7D%2C%7B%22buttonText%22%3A%22Dell+Monitor+U308F%22%7D%2C%7B%22buttonText%22%3A%22iPhone+14+Pro+%28F17Y53N4P2%29%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EMacBook+Pro+16-inch+%28C02G308QJYVW%29%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+asset+%27MacBook+Pro+16-inch+%28C02G308QJYVW%29%27+in+ServiceNow.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Fetching+maintenance+records+and+schedule.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+maintenance+details+for+%3Cb%3EMacBook+Pro+16-inch+%28C02G308QJYVW%29%3C%2Fb%3E.%3C%2Fp%3E%3Cp%3E%3Cb%3EPast+Maintenance%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAug+15%2C+2023%3A%3C%2Fb%3E+Battery+replacement+%28INC0010045%29%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EUpcoming+Schedule%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EOct+28%2C+2024%3A%3C%2Fb%3E+Logic+board+diagnostics+%28CHG0030012%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22MacBook+Pro+16-inch+%28C02G308QJYVW%29%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- **Table Access**: `Read` access to the `alm_asset` table.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

# **Steps to Create the Custom Fields**

To add the `past_maintenance_date` field (`u_past_maintenance_date`) to the `alm_asset` table in the Global scope:

1. Navigate to **System Definition → Tables**
2. Search for and open the **`alm_asset`** table
3. Scroll down to the **Columns** section and click **New**
4. Fill in the following:
    - **Column Label:** `past_maintenance_date`
    - **Type:** `Date`
    - Leave the **Column Name** as auto-generated (`u_past_maintenance_date`)
5. Click **Submit** to save the field

After creation, you can optionally add the field to the Asset form layout:

- Open any asset record → Right-click header → Configure → Form Layout
- Move `u_past_maintenance_date` to the desired section and click **Save**

Repeat these steps to create any additional necessary fields, such as:

- `upcoming_maintenance_date`
- `upcoming_maintenance_description`
- `upcoming_maintenance_number`
- `past_maintenance_description`
- `past_maintenance_number`

# **Appendix**

## API #1: Look_Up_Maintenance_Details_Of_My_Asset

The **Look_Up_Maintenance_Details_Of_My_Asset** API retrieves maintenance history and upcoming service schedules for assets.

```bash
curl --request GET
--location 'https://<YOUR_DOMAIN>/api/now/table/alm_asset?assigned_to.email={{email}}&sysparm_fields=display_name%2Cu_upcoming_maintenance_date%2Cu_upcoming_maintenance_number%2Cu_upcoming_maintenance_description%2Cu_past_maintenance_number%2Cu_past_maintenance_date%2Cu_past_maintenance_description%2Casset_tag' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```

**Query Parameters**

- `email` (string) – The email address of the employee whose Maintenance details of asset need to be retrieved.