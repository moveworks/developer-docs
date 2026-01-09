---
availability: INSTALLABLE
description: A plugin that allows IT administrators to add or update asset tags for
  managed computer devices via the Moveworks AI Assistant. This automation helps standardize
  device tagging by department, location, or type, or directly by device name or ID,
  ensuring accurate and consistent asset tracking in Jamf Pro without manual updates.
installation_asset_uuid: d81ceb68-ac42-40bd-a5eb-3e401a8e0443
name: Update Computer Device Tag
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+update+the+asset+tag+for+a+computer+in+JAMF%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+update+the+asset+tag+for+a+computer+in+Jamf.+How+would+you+like+to+find+the+computer%3F%3C%2Fp%3E%3Cul%3E%3Cli%3EModel+Name%3C%2Fli%3E%3Cli%3EType%3C%2Fli%3E%3Cli%3EEnrollment+Date+Range%3C%2Fli%3E%3Cli%3EComputer+Name%3C%2Fli%3E%3Cli%3EComputer+ID%3C%2Fli%3E%3Cli%3EAll+Computer+Devices%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Enrollment+Date+Range+before+2018%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb%3Ejamf%3C%2Fb%3E+for+devices+enrolled+before+2018.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+5+devices+enrolled+before+2018.+Please+select+one+to+update+the+asset+tag%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3EMacBook+Air+%28Inventory+ID-100%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EiMac+%28Inventory+ID-200%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EMacbook+Pro+%28Inventory+ID-300%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E+Mac+Mini+%28Inventory+ID-400%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EMacbook+%28Inventory+ID-400%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E3rd+computer%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+you%27ve+selected+option+3%3A+%3Cstrong%3EMacbook+Pro+%28Inventory+ID-300%29%3C%2Fstrong%3E.+What+is+the+new+asset+tag+you%27d+like+to+set+for+it%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+new+asset+tag+is+AST-JAMF-12345%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EConfirming+computer+%3Cstrong%3EMacbook+Pro+%28Inventory+ID-300%29%3C%2Fstrong%3E+and+the+new+asset+tag+%3Cstrong%3EAST-JAMF-12345%3C%2Fstrong%3E+for+update.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+update+the+asset+tag+for+computer+%3Cstrong%3EMacbook+Pro+%28Inventory+ID-300%29%3C%2Fstrong%3E+to+%3Cstrong%3EAST-JAMF-12345%3C%2Fstrong%3E.%3C%2Fp%3E%3Cp%3E%3Cstrong%3EDoes+this+look+right%3F%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Confirm%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EProceeding+to+update+the+asset+tag+for+computer+%3Cstrong%3EMacbook+Pro+%28Inventory+ID-300%29%3C%2Fstrong%3E+in+%3Cstrong%3Ejamf%3C%2Fstrong%3E+with+the+new+asset+tag+%3Cstrong%3EAST-JAMF-12345%3C%2Fstrong%3E.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+successfully+updated+the+asset+tag+for+computer+%3Cstrong%3EMacbook+Pro+%28Inventory+ID-300%29%3C%2Fstrong%3E+to+%3Cstrong%3EAST-JAMF-12345%3C%2Fstrong%3E+in+Jamf.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22Jamf+Pro%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf
---

## Introduction

The **“Update Computer Device Tag”** plugin enables IT administrators and support teams to seamlessly update or correct device tags for computers managed in **Jamf**. Using the Moveworks AI Assistant, teams can quickly retrieve device details and modify asset tags or other identifiers as needed. This plugin simplifies asset management by ensuring that device information remains accurate and up to date, improving inventory tracking, audit readiness, and overall IT compliance

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+update+the+asset+tag+for+a+computer+in+JAMF%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+update+the+asset+tag+for+a+computer+in+Jamf.+How+would+you+like+to+find+the+computer%3F%3C%2Fp%3E%3Cul%3E%3Cli%3EModel+Name%3C%2Fli%3E%3Cli%3EType%3C%2Fli%3E%3Cli%3EEnrollment+Date+Range%3C%2Fli%3E%3Cli%3EComputer+Name%3C%2Fli%3E%3Cli%3EComputer+ID%3C%2Fli%3E%3Cli%3EAll+Computer+Devices%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Enrollment+Date+Range+before+2018%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb%3Ejamf%3C%2Fb%3E+for+devices+enrolled+before+2018.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+5+devices+enrolled+before+2018.+Please+select+one+to+update+the+asset+tag%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3EMacBook+Air+%28Inventory+ID-100%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EiMac+%28Inventory+ID-200%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EMacbook+Pro+%28Inventory+ID-300%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E+Mac+Mini+%28Inventory+ID-400%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EMacbook+%28Inventory+ID-400%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E3rd+computer%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+you%27ve+selected+option+3%3A+%3Cstrong%3EMacbook+Pro+%28Inventory+ID-300%29%3C%2Fstrong%3E.+What+is+the+new+asset+tag+you%27d+like+to+set+for+it%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+new+asset+tag+is+AST-JAMF-12345%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EConfirming+computer+%3Cstrong%3EMacbook+Pro+%28Inventory+ID-300%29%3C%2Fstrong%3E+and+the+new+asset+tag+%3Cstrong%3EAST-JAMF-12345%3C%2Fstrong%3E+for+update.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+update+the+asset+tag+for+computer+%3Cstrong%3EMacbook+Pro+%28Inventory+ID-300%29%3C%2Fstrong%3E+to+%3Cstrong%3EAST-JAMF-12345%3C%2Fstrong%3E.%3C%2Fp%3E%3Cp%3E%3Cstrong%3EDoes+this+look+right%3F%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Confirm%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EProceeding+to+update+the+asset+tag+for+computer+%3Cstrong%3EMacbook+Pro+%28Inventory+ID-300%29%3C%2Fstrong%3E+in+%3Cstrong%3Ejamf%3C%2Fstrong%3E+with+the+new+asset+tag+%3Cstrong%3EAST-JAMF-12345%3C%2Fstrong%3E.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+successfully+updated+the+asset+tag+for+computer+%3Cstrong%3EMacbook+Pro+%28Inventory+ID-300%29%3C%2Fstrong%3E+to+%3Cstrong%3EAST-JAMF-12345%3C%2Fstrong%3E+in+Jamf.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22Jamf+Pro%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we **recommend setting up the Jamf connector in Agent Studio beforehand** to simplify the process. Follow the [Jamf Connector Guide](https://marketplace.moveworks.com/connectors/jamf?hist=home#how-to-implement) for detailed instructions.

**Note:**

To enable access to the required Jamf Pro API endpoints, ensure that the appropriate privileges are assigned to the API user via:

- **Settings → API Roles and Clients → API Roles → {{API_ROLE}}**

**Required Privileges**

As an admin, ensure that the following **privileges are granted** to the API user to successfully install and use the **Update Computer Device Tag** plugin:

- **Read Computers**
- **Update Computers**

**Note:**

These privileges allow the plugin to retrieve computer information and update the device’s asset tag (device tag). Make sure the API user has only these permissions if you want to maintain least-privilege security.

**Endpoint Guidelines**

- The **Jamf Pro `/mobile-devices` endpoint does not support filtering or partial search**.
- Filtering using `filter=` parameters is supported **only for the `/computers-inventory` endpoint**.

**Your Instance Configuration**

All Jamf API endpoints in this plugin use **`{{YOUR_INSTANCE}}`** as a placeholder. After installation, replace **`{{YOUR_INSTANCE}}`** in the action definitions with your actual Jamf instance name.

To find your instance name:

1. Log in to your Jamf Pro account.
2. Look at the URL in your browser — the instance name appears before `.jamfcloud.com`.
    - Example: `https://your_instance.jamfcloud.com` → instance name = **`{{YOUR_INSTANCE}}`**

Make sure to update this across all actions that reference the Jamf API.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on installing and activating the plugin in Agent Studio.

### **API #1: Search Computer Devices by Criteria**

```bash
curl --location 'https://{{YOUR_INSTANCE}}/api/v1/computers-inventory?section=GENERAL,HARDWARE,DISK_ENCRYPTION,USER_AND_LOCATION&filter={{filter_query}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Query Parameters**

- **`filter_query`** : A dynamic **RSQL filter** used to search computer devices based on different criteria.
- **`device_model`** : Filters computer devices by hardware model name.
- **`device_type`** : Filters computer devices by platform type (e.g., macOS).
- **`start_date / end_date`** : Filters computer devices enrolled within a date range.
- **`device_name`** : Finds computer devices using partial or full device name.
- **`device_id`** : Retrieves a specific computer device by its exact ID.
- **`active_devices`** : Boolean filter to get only managed/active computer devices.
- **`section`** :  Defines which computer devices information to return, with comma-separated values like `GENERAL` (name, serial, asset tag), `HARDWARE` (CPU, memory, storage), and `DISK_ENCRYPTION` (encryption details)

**RSQL Filtering Notes:**

- Use **RSQL syntax** in the `filter_query` parameter to filter on different objects/conditions.
- Common examples:
    - **Device Model:** `hardware.model==*{{device_model}}*`
    - **Device Type (Platform):** `general.platform==*{{device_type}}*`
    - **Enrollment Date Range:** `general.lastEnrolledDate>="{{start_date}}";general.lastEnrolledDate<="{{end_date}}"`
    - **Device Name:** `general.name==*{{device_name}}*`
    - **Device ID:** `id=="{{device_id}}"`
    - **All Active Devices:** `general.remoteManagement.managed==true`
- Filters can be **combined** using:
    - `;` → AND
    - `,` → OR

**Example of a Compound RSQL Filter:**

```bash
hardware.model==*{{device_model}}*
```

**Example Response:**

```bash
{
  "totalCount": 2,
  "results": [
    {
      "id": "{{device_id}}",
      "general": {
        "name": "{{device_name}}",
        "platform": "{{device_type}}",
        "assetTag": "{{asset_tag}}",
        "remoteManagement": {
          "managed": "{{active_state}}"
        },
        "lastEnrolledDate": "{{enrollment_date}}"
      },
      "hardware": {
        "model": "{{device_model}}",
        "serialNumber": "{{serial_number}}"
      },
      "userAndLocation": {
        "username": "{{username}}",
        "email": "{{email}}"
      }
    }
  ]
}
```

**Notes:**

- This single API endpoint supports **flexible searches**, allowing filtering by **device model, device type, enrollment date range, device name, device ID, and active/managed state**

### **API #2: Update Computer Device Tag by Device ID**

```bash
curl --location --request PUT 'https://{{YOUR_INSTANCE}}/JSSResource/computers/id/{{device_id}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--data-raw '<computer>
    <general>
        <asset_tag>{{asset_tag}}</asset_tag>
    </general>
</computer>'
```

**Path Parameter:**

- **`device_id`** : The unique ID of the computer in Jamf Pro whose asset tag needs to be updated.

**Request Body Parameter:**

- **`asset_tag`** : The new asset tag value to assign to the computer.
