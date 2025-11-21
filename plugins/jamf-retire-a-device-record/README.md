---
availability: INSTALLABLE
description: A plugin that allows IT administrators to retire a computer device in
  Jamf Pro via the Moveworks AI Assistant. This automation safely marks devices as
  Retired instead of permanently deleting them, ensuring historical and compliance
  data is preserved. Admins can safely retire devices and maintain an accurate and
  clean inventory without destructive actions.
difficulty_level: BEGINNER
domain:
- IT
- Access Management
fidelity: TEMPLATE
installation_asset_uuid: 2fb6fcab-d6e1-4647-90e3-528a1dd207fd
name: Retire a Computer Device Record
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+deactivate+some+apple+computer+devices+in+JAMF%2C+can+you+pls+help+me%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Understanding+that+%27delete%27+means+%27retire%27+a+device+record+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ejamf%3C%2Fb%3E+to+preserve+historical+data.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+can+help+you+retire+computer+device+records+in+Jamf.+To+ensure+we+retire+the+correct+devices%2C+how+would+you+like+to+identify+them%3F%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDevice+Name+%3C%2Fstrong%3E%28e.g.%2C+MacBook-Pro-123%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDevice+ID%3C%2Fstrong%3E+%28e.g.%2C+ID+5678%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EBy+User%3C%2Fstrong%3E+%3Cstrong%3EEmail%3C%2Fstrong%3E+%28e.g.%2C+john.doe%40example.com%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EBy+User%3C%2Fstrong%3E+%3Cstrong%3EName%3C%2Fstrong%3E+%28e.g.%2C+jdoe%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EBy+Model+%2F+Type%3C%2Fstrong%3E+%28e.g.%2C+MacBook+Air+M1s%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EBy+Last+Check-In%2FReport+Date%3C%2Fstrong%3E+%28e.g.%2C+not+checked+in+for+180+days%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Eretire+devices+for+John%2C+he+has+left+the+company.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ejamf%3C%2Fb%3E+for+users+matching+%27John%27+to+identify+potential+matches.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+users+named+John.+Which+one+would+you+like+to+select%3F%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EJohn+Doe%3C%2Fb%3E+%28john.doe%40example.com%2C+Department%3A+Engineering%29%3C%2Fli%3E%3Cli%3E%3Cb%3EJonathon+Smith%3C%2Fb%3E+%28jonathon.smith%40example.com%2C+Department%3A+Sales%29%3C%2Fli%3E%3Cli%3E%3Cb%3EJane+Johnson%3C%2Fb%3E+%28jane.johnson%40example.com%2C+Department%3A+HR%29%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EPlease+select+the+correct+user.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+device+records+assigned+to+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJohn+Doe%3C%2Fb%3E+%28john.doe%40example.com%29+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ejamf%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+found+the+following+devices+assigned+to+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+%28john.doe%40example.com%29%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMacBook+Pro%3C%2Fstrong%3E+%28Serial%3A+C02P123ABCD%2C+Last+Check-in%3A+2024-03-15%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EiMac%3C%2Fstrong%3E+%28Serial%3A+F17Q456EFGH%2C+Last+Check-in%3A+2024-03-10%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EWould+you+like+to+retire+all+of+them%2C+or+specify+which+ones%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Eretire+the+first+device%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EPreparing+to+retire+MacBook+Pro+for+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+in+%3Cstrong%3Ejamf%3C%2Fstrong%3E.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+retire+the+following+devices+assigned+to+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+%28john.doe%40example.com%29%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMacBook+Pro%3C%2Fstrong%3E+%28Serial%3A+C02P123ABCD%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EThese+devices+will+be+marked+as+%27Retired%27+and+the+device+will+become+%27Unmanaged%27.+This+action+is+not+a+permanent+deletion+but+changes+their+status.%3C%2Fp%3E%3Cp%3E%3Cstrong%3EDoes+this+look+correct%3F%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+retire+them.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EExecuting+retirement+of+MacBook+Pro+for+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+in+%3Cstrong%3Ejamf%3C%2Fstrong%3E.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+%3Cstrong%3EMacBook+Pro%3C%2Fstrong%3E+%28Serial%3A+C02P123ABCD%29+for+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+has+been+successfully+marked+as+%27Retired%27+in+Jamf+and+the+device+is+now+Unmanaged.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22John+Doe%27s+Retired+Devices%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf
time_in_minutes: 10
---

## **Introduction**

The **“Retire a computer device record”** plugin enables IT administrators to efficiently manage aging or decommissioned devices through the Moveworks AI Assistant. Instead of permanently deleting records, this plugin provides a safe and streamlined way to mark devices as **Retired** in Jamf Pro. With flexible search options, admins can retire devices using identifiers such as device name, device ID, device model, assigned user email, username or last check-in date. This ensures a clean, accurate device inventory while protecting important organizational data.

This guide will show you how to set up and customize the plugin in Agent Studio in just a few minutes.

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+deactivate+some+apple+computer+devices+in+JAMF%2C+can+you+pls+help+me%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Understanding+that+%27delete%27+means+%27retire%27+a+device+record+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ejamf%3C%2Fb%3E+to+preserve+historical+data.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+can+help+you+retire+computer+device+records+in+Jamf.+To+ensure+we+retire+the+correct+devices%2C+how+would+you+like+to+identify+them%3F%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDevice+Name+%3C%2Fstrong%3E%28e.g.%2C+MacBook-Pro-123%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDevice+ID%3C%2Fstrong%3E+%28e.g.%2C+ID+5678%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EBy+User%3C%2Fstrong%3E+%3Cstrong%3EEmail%3C%2Fstrong%3E+%28e.g.%2C+john.doe%40example.com%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EBy+User%3C%2Fstrong%3E+%3Cstrong%3EName%3C%2Fstrong%3E+%28e.g.%2C+jdoe%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EBy+Model+%2F+Type%3C%2Fstrong%3E+%28e.g.%2C+MacBook+Air+M1s%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EBy+Last+Check-In%2FReport+Date%3C%2Fstrong%3E+%28e.g.%2C+not+checked+in+for+180+days%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Eretire+devices+for+John%2C+he+has+left+the+company.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ejamf%3C%2Fb%3E+for+users+matching+%27John%27+to+identify+potential+matches.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+users+named+John.+Which+one+would+you+like+to+select%3F%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EJohn+Doe%3C%2Fb%3E+%28john.doe%40example.com%2C+Department%3A+Engineering%29%3C%2Fli%3E%3Cli%3E%3Cb%3EJonathon+Smith%3C%2Fb%3E+%28jonathon.smith%40example.com%2C+Department%3A+Sales%29%3C%2Fli%3E%3Cli%3E%3Cb%3EJane+Johnson%3C%2Fb%3E+%28jane.johnson%40example.com%2C+Department%3A+HR%29%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EPlease+select+the+correct+user.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+device+records+assigned+to+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJohn+Doe%3C%2Fb%3E+%28john.doe%40example.com%29+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ejamf%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+found+the+following+devices+assigned+to+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+%28john.doe%40example.com%29%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMacBook+Pro%3C%2Fstrong%3E+%28Serial%3A+C02P123ABCD%2C+Last+Check-in%3A+2024-03-15%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EiMac%3C%2Fstrong%3E+%28Serial%3A+F17Q456EFGH%2C+Last+Check-in%3A+2024-03-10%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EWould+you+like+to+retire+all+of+them%2C+or+specify+which+ones%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Eretire+the+first+device%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EPreparing+to+retire+MacBook+Pro+for+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+in+%3Cstrong%3Ejamf%3C%2Fstrong%3E.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+retire+the+following+devices+assigned+to+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+%28john.doe%40example.com%29%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMacBook+Pro%3C%2Fstrong%3E+%28Serial%3A+C02P123ABCD%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EThese+devices+will+be+marked+as+%27Retired%27+and+the+device+will+become+%27Unmanaged%27.+This+action+is+not+a+permanent+deletion+but+changes+their+status.%3C%2Fp%3E%3Cp%3E%3Cstrong%3EDoes+this+look+correct%3F%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+retire+them.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EExecuting+retirement+of+MacBook+Pro+for+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+in+%3Cstrong%3Ejamf%3C%2Fstrong%3E.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+%3Cstrong%3EMacBook+Pro%3C%2Fstrong%3E+%28Serial%3A+C02P123ABCD%29+for+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E+has+been+successfully+marked+as+%27Retired%27+in+Jamf+and+the+device+is+now+Unmanaged.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22John+Doe%27s+Retired+Devices%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up Jamf before installing this plugin. Please follow the [Jamf-Connector](https://marketplace.moveworks.com/connectors/jamf?hist=home#how-to-implement) guide to configure the connection.

**Note:** To enable access to the Jamf API endpoints used in this plugin, ensure that the following API roles are assigned to the API Client Settings → API Roles and Clients → API Roles → [Your API Role].

Specifically, confirm that the following privileges are granted:

- **Read Users**
- **Read Computers**
- **Update Computer Extension Attributes**

These permissions are required to retrieve user-related data and perform advanced searches in the Jamf Pro environment using the API.

**Create Required Extension Attribute: Lifecycle Status**

Before using this plugin, you must create an Extension Attribute in Jamf for tracking device lifecycle status (e.g., *Active*, *Retired*, etc.).

Follow these steps:

1. **Navigate to:**

    `Jamf Pro → Settings → Computer Management → Extension Attributes`

2. Click **New** (or **Add**).

3. Fill in the details:

   - **Name:** `Lifecycle Status`
   - **Data Type:** String
   - **Input Type:** Text Field (recommended)
   - **Inventory Display:** Choose the appropriate section (Default: Extension Attributes)

4. Click **Save**.

This Extension Attribute is required because the plugin updates the device’s Lifecycle Status using the Jamf API.

**Your Instance Configuration:**

All Jamf API endpoints in this plugin use **`'YOUR_INSTANCE'`** as a placeholder. After installation, replace **`'YOUR_INSTANCE'`** in the action definitions with your actual Jamf instance name.

To find your instance name:

1. Log in to your Jamf Pro account.
2. Check the URL in your browser — the instance name appears before `.jamfcloud.com`
    - e.g., [`https://your_instance.jamfcloud.com`](https://your_instance.jamfcloud.com/) → instance name = `'YOUR_INSTANCE'`

Make sure to update this across all actions that reference the Jamf API.

Once the connector is successfully configured, follow our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.

## **Appendix**

### API #1: Get Computer Inventory

```bash
curl --location 'https://<YOUR_INSTANCE>/api/v1/computers-inventory?filter={{filter_query}}&section=USER_AND_LOCATION,HARDWARE,GENERAL' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN> ' \
```

**Query Parameters:**

**$filter_query : (string)** – Filter users by specific property values.

You can filter by **device id**, **device name**, **device model name**, **username**, **user email** or **report date**.

- Example filters:
    - `id==12` → Returns the device with that exact device ID (e.g., id/12).
    - `general.name=="Apple iMac 27-inch"` → Returns devices with a partial match of the computer name.
    - `userAndLocation.email=="email@com.pl"` → Returns the device assigned to that user email.
    - `userAndLocation.name=="mathew"` → Returns devices assigned to a user with a partial match of the username.
    - `filter=hardware.model=="MacBookPro9,3"` → Returns devices that partially match the hardware model identifier.
    - `general.reportDate>"2025-10-01T00:00:00.000Z"` → Returns devices with a report date later than that timestamp.
    
    **`section`** : Specifies the broad data categories to include in the response (for example: GENERAL, HARDWARE,USER_AND_LOCATION).
    
### API #2: Update Lifecycle Status
    
```bash
curl --location --request PUT 'https://<YOUR_INSTANCE>/JSSResource/computers/id/<DEVICE_ID>' \
--header 'Content-Type: application/xml' \
--header 'Accept: application/xml' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--data '
  <computer>
    <general>
      <remote_management>
        <managed>false</managed>
      </remote_management>
    </general>
    <extension_attributes>
      <extension_attribute>
        <name>Lifecycle Status</name>
        <value>Retired</value>
      </extension_attribute>
    </extension_attributes>
  </computer>'
```
    
**Path Parameters:**

`device_id` : (string) - Updates the life cycle status.

**Requested Body Parameters:**

- `computer` – Root object representing the computer record that will be updated.

- `general` – General information section of the computer object (parent container).

- `remote_management` – Remote Management configuration block containing management status.

- `managed` – Indicates whether the device is managed by Jamf.

    - Example: `false` (marks the computer as unmanaged).

- `extension_attributes` – Parent container for all extension attributes associated with the device.

- `extension_attribute` – A single extension attribute entry that you want to modify.

- `name` – Name of the Extension Attribute you are updating.

    - Example: `Lifecycle Status`.

- `value` – New value that should be assigned to the Extension Attribute.

    - Example: `Terminated`.