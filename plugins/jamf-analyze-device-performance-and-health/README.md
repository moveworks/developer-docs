---
availability: IDEA
description: A plugin that enables IT administrators and support teams to assess the
  health and performance of a specific device through the Moveworks AI Assistant,
  using a detailed device health summary and a calculated health score.
domain:
- IT
- Access Management
fidelity: GUIDE
name: Analyze Device Performance and Health
difficulty_level: INTERMEDIATE
time_in_minutes: 20
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+health+summary+for+a+device.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+can+help+with+that.+Please+provide+the+%3Cb%3Edevice+name%3C%2Fb%3E%2C+%3Cb%3Eserial+number%3C%2Fb%3E%2C+%3Cb%3Euser+email%3C%2Fb%3E%2C+or+%3Cb%3EJamf+inventory+ID%3C%2Fb%3E+for+the+device+you%27d+like+to+analyze.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22john%40acme.corp%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E+for+devices+associated+with+%3Ccode+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ejohn%40acme.corp%3C%2Fcode%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+devices+for+John+Doe.+Which+one+would+you+like+to+analyze%3F%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3EMacBook+Pro+%2813-inch%2C+2020%29+-+A1234BCD56EF%3C%2Fli%3E%3Cli%3EiPad+Air+%284th+Gen%29+-+G9876HGF01LK%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22MacBook+Pro+A1234BCD56EF%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+hardware+information+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EMacBook+Pro+A1234BCD56EF%3C%2Fb%3E+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+OS+details+and+software+inventory...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Gathering+storage+and+memory+metrics...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Checking+battery+health+and+cycle+count...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Assessing+security+status+%28FileVault%2C+Firewall%29...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+the+health+summary+for+%3Cb%3EMacBook+Pro+%2813-inch%2C+2020%29%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EOS%3A%3C%2Fb%3E+macOS+14.1%3C%2Fli%3E%3Cli%3E%3Cb%3ECPU%3A%3C%2Fb%3E+Apple+M1+%288-core%29%3C%2Fli%3E%3Cli%3E%3Cb%3EMemory%3A%3C%2Fb%3E+16+GB+%2868%25+in+use%29%3C%2Fli%3E%3Cli%3E%3Cb%3EStorage%3A%3C%2Fb%3E+480+GB+%2F+512+GB+%286%25+free+%E2%80%93+low%29%3C%2Fli%3E%3Cli%3E%3Cb%3EBattery%3A%3C%2Fb%3E+Cycle+Count+910+%28Poor%29%3C%2Fli%3E%3Cli%3E%3Cb%3ESecurity%3A%3C%2Fb%3E+FileVault+enabled%2C+Firewall+active%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EHealth+Score%3A%3C%2Fb%3E+6%2F10+%28Degraded%29%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EAssessment%3A%3C%2Fb%3E+Low+disk+space+and+poor+battery+condition+detected.+Recommend+cleanup+and+battery+service.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+Pro+%2813-inch%2C+2020%29+-+A1234BCD56EF%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf

---
## **Introduction**

The **“Analyze Device Performance and Health”** plugin enables IT administrators and support teams to assess the overall health and performance of devices managed in Jamf Pro. Through the Moveworks AI Assistant, the plugin retrieves key hardware, storage, battery, and security details to calculate an objective Health Score for each device. This helps IT teams quickly identify performance bottlenecks — such as low storage, poor battery condition, or high memory usage — and take proactive action to maintain optimal device performance and lifecycle management.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+health+summary+for+a+device.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+can+help+with+that.+Please+provide+the+%3Cb%3Edevice+name%3C%2Fb%3E%2C+%3Cb%3Eserial+number%3C%2Fb%3E%2C+%3Cb%3Euser+email%3C%2Fb%3E%2C+or+%3Cb%3EJamf+inventory+ID%3C%2Fb%3E+for+the+device+you%27d+like+to+analyze.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22john%40acme.corp%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E+for+devices+associated+with+%3Ccode+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ejohn%40acme.corp%3C%2Fcode%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+devices+for+John+Doe.+Which+one+would+you+like+to+analyze%3F%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3EMacBook+Pro+%2813-inch%2C+2020%29+-+A1234BCD56EF%3C%2Fli%3E%3Cli%3EiPad+Air+%284th+Gen%29+-+G9876HGF01LK%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22MacBook+Pro+A1234BCD56EF%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+hardware+information+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EMacBook+Pro+A1234BCD56EF%3C%2Fb%3E+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+OS+details+and+software+inventory...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Gathering+storage+and+memory+metrics...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Checking+battery+health+and+cycle+count...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Assessing+security+status+%28FileVault%2C+Firewall%29...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+the+health+summary+for+%3Cb%3EMacBook+Pro+%2813-inch%2C+2020%29%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EOS%3A%3C%2Fb%3E+macOS+14.1%3C%2Fli%3E%3Cli%3E%3Cb%3ECPU%3A%3C%2Fb%3E+Apple+M1+%288-core%29%3C%2Fli%3E%3Cli%3E%3Cb%3EMemory%3A%3C%2Fb%3E+16+GB+%2868%25+in+use%29%3C%2Fli%3E%3Cli%3E%3Cb%3EStorage%3A%3C%2Fb%3E+480+GB+%2F+512+GB+%286%25+free+%E2%80%93+low%29%3C%2Fli%3E%3Cli%3E%3Cb%3EBattery%3A%3C%2Fb%3E+Cycle+Count+910+%28Poor%29%3C%2Fli%3E%3Cli%3E%3Cb%3ESecurity%3A%3C%2Fb%3E+FileVault+enabled%2C+Firewall+active%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EHealth+Score%3A%3C%2Fb%3E+6%2F10+%28Degraded%29%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EAssessment%3A%3C%2Fb%3E+Low+disk+space+and+poor+battery+condition+detected.+Recommend+cleanup+and+battery+service.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+Pro+%2813-inch%2C+2020%29+-+A1234BCD56EF%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Jamf** **Connector** before installing this plugin. Please follow the [Jamf Connector](https://marketplace.moveworks.com/connectors/jamf?hist=home#how-to-implement) guide to configure the connection.

**Note:** 

To enable access to Jamf Pro API endpoints, ensure that the appropriate privileges are assigned to the user via:

 **Settings → API Roles and Clients → Your API Role → Tokens**.

**Required Privileges:**

As an admin, ensure that the following **privileges are granted** to the API user to successfully install and use this plugin:

- **Read Computers**

This permission is required to retrieve user-related data and perform advanced searches within the Jamf Pro environment using the API.

**Endpoint Guidelines:**

- The **Jamf Pro `/mobile-devices` endpoint does not support filtering or partial search**.
- Filtering using `filter=` parameters is supported **only for the `/computers-inventory` endpoint**.

**Tenant Configuration:**

All Jamf Pro API endpoints in this plugin use **`YOUR_INSTANCE`** as a placeholder. After installation, replace **`YOUR_INSTANCE`** in the API calls with your actual Jamf instance name.

To find your instance name:

- Log into Jamf Pro.
- Check the URL in your browser — the instance name appears before `.jamfcloud.com`, e.g.:
    
    **`https://YOUR_INSTANCE.jamfcloud.com/...`**
   
Make sure to update this across all actions that reference the Jamf Pro API.

Once the connector is successfully configured, follow our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.

## **Appendix**

### **API #1: Search Devices by Criteria**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/v1/computers-inventory?section=HARDWARE,STORAGE,OPERATING_SYSTEM,USER_AND_LOCATION,SECURITY,GENERAL&filter={{filter_query}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters**

- `{{filter_query}}` – A **dynamic RSQL filter** constructed based on the user’s input or search context.
- `device_name` : Partial or full device name to match in Jamf inventory.
- `username` : Username of the device owner (**required** for username-based search).
- `email` : Email of the device owner (used when username is unavailable).
- `serial_number` : Unique hardware ID used to find the exact device in Jamf.

**RSQL Filtering Notes:**

- Use **RSQL syntax** in the `filter_query` parameter to filter on different objects/conditions.
- Common examples:
    - **Device Name:** `general.name=='*{{device_name}}*'`
    - **Username:** `userAndLocation.username=='*{{username}}*'`
    - **Email:** `userAndLocation.email=='{{email}}'`
    - **Serial Number:** `hardware.serialNumber=='{{serial_number}}'`

**Note:** 

- This setup enables a **single API structure** to support both broad and targeted searches for orphaned devices — whether by username, device name, or a specific device record — improving flexibility and reducing redundant endpoint calls.
- In JAMF, the username is mandatory for filtering; full name cannot be used.