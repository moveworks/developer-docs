---
availability: IDEA
description: A plugin to perform inventory lookups in Jamf, allowing users to quickly
  access device information and status.
domain:
- IT
fidelity: GUIDE
name: Inventory Lookup
difficulty_level: INTERMEDIATE
time_in_minutes: 20
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+check+the+status+of+a+MacBook+assigned+to+John+Doe.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+user+%27John+Doe%27+in+the+directory...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+user+%27John+Doe%27.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Searching+for+devices+assigned+to+%27John+Doe%27+in+Jamf...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+2+devices.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+two+devices+assigned+to+%3Cb%3EJohn+Doe%3C%2Fb%3E.+Which+one+would+you+like+to+see%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22MacBook+Pro+%28XYZ123%29%22%2C%22connectorName%22%3A%22jamf%22%7D%2C%7B%22citationTitle%22%3A%22MacBook+Air+%28ABC789%29%22%2C%22connectorName%22%3A%22jamf%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+second+one%2C+MacBook+Air.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+details+for+MacBook+Air+%28ABC789%29+from+Jamf...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+fetched+device+details.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+the+detailed+status+for+the+MacBook+Air%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+In+repair%3C%2Fli%3E%3Cli%3E%3Cb%3ELast+Check-In%3A%3C%2Fb%3E+5+days+ago%3C%2Fli%3E%3Cli%3E%3Cb%3EAssigned+To%3A%3C%2Fb%3E+John+Doe%3C%2Fli%3E%3Cli%3E%3Cb%3ELocation%3A%3C%2Fb%3E+Tech+Support+Office%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22MacBook+Air+%28ABC789%29%22%2C%22connectorName%22%3A%22jamf%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- jamf

---
## **Introduction**
 
The **“Inventory Look Up”** plugin enables users to easily check the status of devices assigned to individuals within the Jamf Pro environment. The plugin allows for quick inventory lookups by username, making it simple to locate the required devices.
 
This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!
 
## **Prerequisites**
 
- Access to Agent Studio
 
## **What are we building?**
 
### **Agent Design**
 
This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+check+the+status+of+a+MacBook+assigned+to+John+Doe.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+user+%27John+Doe%27+in+the+directory...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+user+%27John+Doe%27.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Searching+for+devices+assigned+to+%27John+Doe%27+in+Jamf...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+2+devices.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+two+devices+assigned+to+%3Cb%3EJohn+Doe%3C%2Fb%3E.+Which+one+would+you+like+to+see%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22MacBook+Pro+%28XYZ123%29%22%2C%22connectorName%22%3A%22jamf%22%7D%2C%7B%22citationTitle%22%3A%22MacBook+Air+%28ABC789%29%22%2C%22connectorName%22%3A%22jamf%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+second+one%2C+MacBook+Air.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+details+for+MacBook+Air+%28ABC789%29+from+Jamf...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+fetched+device+details.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+the+detailed+status+for+the+MacBook+Air%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+In+repair%3C%2Fli%3E%3Cli%3E%3Cb%3ELast+Check-In%3A%3C%2Fb%3E+5+days+ago%3C%2Fli%3E%3Cli%3E%3Cb%3EAssigned+To%3A%3C%2Fb%3E+John+Doe%3C%2Fli%3E%3Cli%3E%3Cb%3ELocation%3A%3C%2Fb%3E+Tech+Support+Office%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22MacBook+Air+%28ABC789%29%22%2C%22connectorName%22%3A%22jamf%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.
 
## **Installation Steps**
 
We recommend setting up Jamf before installing this plugin. Please follow the [Jamf-Connector](https://marketplace.moveworks.com/connectors/jamf?hist=home#how-to-implement) guide to configure the connection.
 
**Note:** To enable access to Jamf Pro API endpoints, ensure that the appropriate privileges are assigned to the user via **Settings → API Roles and Clients → API Roles → Tokens**.
 
Specifically, confirm that the following privilege is granted:
 
- **Read User**
 
This permission is required to retrieve user-related data and perform advanced searches within the Jamf Pro environment using the API.
 
Once the connector is successfully configured, follow our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.
 
# **Customization Process:**
 
In **Jamf Pro**, extension attributes are used to customize the inventory with additional fields such as **Assigned To**, **Status**, **Last Check-In**, and **Location**. These attributes are essential for enabling inventory lookups through API integrations.
 
Please follow the steps below to create the Extension Attributes:
 
- **Go to:** Settings → Computers and Devices→ Extension Attributes
- **Click**: **New** to create a new extension attribute.
    - **Display Name**: Enter a name like **`Status`**, **`Location`**, **`Assigned To`** and **`Last Check-In`**.
    - **Description** *(Optional)*: Briefly explain the field’s purpose.
    - **Data Type**: Use **String** for custom values.
    - **Display Category**: Choose **General** or another category.
    - **Input Type**: Like **`Text Field`**, **`Pop-Up Menu`**, **`Script`**
- **Scope to Devices**: Extension attributes are scoped to all computers and devices will appear in the **inventory record** under the “Extension Attributes” section.
- **Save & Use**: Fields can be updated via Jamf UI and API.
 
## **Appendix**
 
### **API #1:  Get Username By Email**
 
```bash
curl --location 'https://<YOUR_INSTANCE>/JSSResource/users/email/{{email}}' \
--header 'authorization: Bearer <ACCESS_TOKEN>' \
--header 'accept: application/json' \
```
 
**Path Parameters:**
 
- `email` (string) – Returns the details assigned to the specific users.
 
**Note:** The system retrieves the username based on the user’s email in order to look up the inventory devices
 
### **API #2: Get All Users Devices via Name**
 
```bash
curl --location 'https://<YOUR_INSTANCE>/JSSResource/users/name/{{user_name}}' \
--header 'authorization: Bearer <ACCESS_TOKEN>' \
--header 'accept: application/json' \
```
 
**Path Parameters:**
 
- `user_name`(string) – Returns the details of the user, including linked devices such as computer and mobile devices.
 
### **API #3: Look Up Inventory Details**
 
```bash
curl --location 'https://<YOUR_INSTANCE>/api/v1/{{device_type}}/{{inventory_id}}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```
 
**Path Parameters:**
 
- **device_type** (string) – The type of device to query. Accepted values are: `computers`, `mobiledevices`
- **inventory_id** (integer) – The unique ID of the device whose inventory details you want to retrieve.