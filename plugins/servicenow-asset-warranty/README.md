---
availability: INSTALLABLE
description: A plugin that retrieves warranty information for assets, aiding in repair
  and replacement decision-making.
installation_asset_uuid: c75194ed-042d-4447-a5cc-d88113c2ede6
name: Look Up Asset Warranty Details
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat%27s+the+warranty+information+for+my+laptop%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearching+%3Cb%3EServiceNow%3C%2Fb%3E+for+assets+assigned+to+you...%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+one+laptop+assigned+to+you%2C+the+%3Cb%3EMacBook+Pro+16%5C%22%3C%2Fb%3E.+Here+is+the+warranty+information+I+found+in+%3Cb%3EServiceNow%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAsset+Tag%3A%3C%2Fb%3E+S-ASSET-58292%3C%2Fli%3E%3Cli%3E%3Cb%3EPurchase+Date%3A%3C%2Fb%3E+2023-08-15%3C%2Fli%3E%3Cli%3E%3Cb%3EWarranty+Expiration%3A%3C%2Fb%3E+2026-08-14%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+%3Ccode%3EActive%3C%2Fcode%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ECoverage%3A%3C%2Fb%3E+Includes+hardware+repair%2C+technical+support%2C+and+battery+service.+Does+not+cover+accidental+damage.%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22S-ASSET-58292%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
systems:
- servicenow
solution_tags:
- IT
- Ticketing
---

# Look Up Asset Warranty Details

## Introduction

The **“Look Up Asset Warranty Details”** plugin enables users to quickly retrieve warranty-related information for assets assigned to them, such as laptops or desktops, directly through the Moveworks AI Assistant. By eliminating the need to navigate ServiceNow manually, this plugin streamlines access to key asset data—including asset name, asset tag, purchase date, warranty expiration, and coverage helping employees easily verify the warranty status of their assigned devices.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started

## Prerequisites

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat%27s+the+warranty+information+for+my+laptop%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearching+%3Cb%3EServiceNow%3C%2Fb%3E+for+assets+assigned+to+you...%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+one+laptop+assigned+to+you%2C+the+%3Cb%3EMacBook+Pro+16%5C%22%3C%2Fb%3E.+Here+is+the+warranty+information+I+found+in+%3Cb%3EServiceNow%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAsset+Tag%3A%3C%2Fb%3E+S-ASSET-58292%3C%2Fli%3E%3Cli%3E%3Cb%3EPurchase+Date%3A%3C%2Fb%3E+2023-08-15%3C%2Fli%3E%3Cli%3E%3Cb%3EWarranty+Expiration%3A%3C%2Fb%3E+2026-08-14%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+%3Ccode%3EActive%3C%2Fcode%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ECoverage%3A%3C%2Fb%3E+Includes+hardware+repair%2C+technical+support%2C+and+battery+service.+Does+not+cover+accidental+damage.%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22S-ASSET-58292%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- **Read access to the `alm_asset` table** (to retrieve asset and warranty information)
- **Read access to the `sys_user` table** (to resolve assigned user details, such as email or display name)
- **Read access to custom fields** – if the plugin uses fields like `u_coverage`, ensure the user has read access to those specific fields via ACL

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Steps to Create the Custom Field**

To add the `Coverage` field (`u_coverage`) to the `alm_asset` table in the Global scope:

1. Navigate to **System Definition → Tables**
2. Search for and open the **`alm_asset`** table
3. Scroll down to the **Columns** section and click **New**
4. Fill in the following:
    - **Column Label:** `Coverage`
    - **Type:** `String` or `Choice` (depending on your requirement)
    - Leave the **Column Name** as auto-generated (`u_coverage`)
5. Click **Submit** to save the field

After creation, you can optionally add the field to the Asset form layout:

- Open any asset record → Right-click header → **Configure → Form Layout**
- Move `u_coverage` to the desired section and click **Save**

## **Appendix**

### **API #1: Get Asset Tag by using Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/alm_asset?sysparm_query=assigned_to.email=<USER_EMAIL>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `USER_EMAIL`(string) – Email address of the user to retrieve `asset_tag`

### **API #2:  Get Asset Warranty Expiration**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/alm_asset?sysparm_query=asset_tag=<ASSET_TAG>&sysparm_fields=display_name,asset_tag,purchase_date,warranty_expiration,install_status,u_coverage' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `ASSET_TAG`(string) – Unique identifier assigned to an asset, used to retrieve warranty and ownership details.
