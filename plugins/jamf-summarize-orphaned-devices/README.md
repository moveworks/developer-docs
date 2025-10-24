---
availability: IDEA
description: A plugin that allows IT administrators to summarize orphaned devices
  that not currently assigned to any user in Jamf through the Moveworks AI Assistant.
domain:
- IT
- Access Management
fidelity: GUIDE
name: Summarize Orphaned Devices
difficulty_level: INTERMEDIATE
time_in_minutes: 20
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22summarize+orphaned+devices%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22User+did+not+specify+a+device+type%2C+asking+for+clarification.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Would+you+like+to+summarize+orphaned+%3Ci+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EComputers%3C%2Fi%3E+or+%3Ci+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EMobile+Devices%3C%2Fi%3E%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Computers%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+specified+%27Computers%27+as+the+device+type.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Retrieving+orphaned+computer+inventory+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Analyzing+data+to+identify+models+and+check-in+dates.%22%7D%5D%7D%2C%7B%22richText%22%3A%22You+have+25+orphaned+computers+%E2%80%94+12+MacBooks%2C+8+iMacs%2C+and+5+Mac+Minis.+The+most+recent+check-in+was+Oct+18%2C+2025.%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22Orphaned+Computer+Inventory%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf

---
## **Introduction**

The **“Summarize Orphaned Devices”** plugin enables IT administrators to identify and summarize devices in Jamf Pro that are not currently assigned to any user. Through the Moveworks AI Assistant, the plugin provides a concise overview of orphaned assets — including the device name, model, OS version, and last check-in date — allowing IT teams to efficiently reclaim, reprovision, or clean up unused devices without manually searching in Jamf Pro.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+look+up+orphaned+devices%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22User+wants+to+find+orphaned+devices.+Clarifying+the+search+scope.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Do+you+want+to+look+up%3A%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3Eall+orphaned+devices%3C%2Fli%3E%3Cli%3Eorphaned+devices+based+on+device+name+%28ex%3A+Macbook+Pro%29%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+view+orphaned+Macbook+air+devices%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+specified+%27Macbook+Air%27+devices.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJAMF%3C%2Fb%3E+for+orphaned+devices+matching+%27Macbook+Air%27.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Found+5+matching+devices.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+5+orphaned+MacBook+Air+devices.+Which+one+would+you+like+to+view%3F%3Cbr%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3EMacBook+Air+-+SN%3A+XYZ12345+%28Last+reported+date%3A+2023-10-25%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EMacBook+Air+-+SN%3A+ABC67890+%28Last+reported+date%3A+2023-11-01%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EMacBook+Air+-+SN%3A+DEF01234+%28Last+reported+date%3A+2023-09-15%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EMacBook+Air+-+SN%3A+GHI56789+%28Last+reported+date%3A+2024-01-05%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EMacBook+Air+-+SN%3A+JKL98765+%28Last+reported+date%3A+2023-12-10%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22Orphaned+Device+Search+Results%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+see+details+for+MacBook+Air+-+SN%3A+XYZ12345%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+selected+device+%27MacBook+Air+-+SN%3A+XYZ12345%27.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Retrieving+detailed+information+for+MacBook+Air+-+SN%3A+XYZ12345+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJAMF%3C%2Fb%3E.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Successfully+retrieved+device+details.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EMacBook+Air+-+SN%3A+XYZ12345%3C%2Fb%3E%3A%3Cbr+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22+%2F%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EModel%3A%3C%2Fb%3E+MacBook+Air+%28M1%2C+2020%29%3C%2Fli%3E%3Cli%3E%3Cb%3ESerial+Number%3A%3C%2Fb%3E+XYZ12345%3C%2Fli%3E%3Cli%3E%3Cb%3ELast+Check-in%3A%3C%2Fb%3E+2023-10-25+14%3A30+UTC%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Orphaned+%28No+user+assigned%2C+not+seen+in+90%2B+days%29%3C%2Fli%3E%3Cli%3E%3Cb%3EAssigned+User%3A%3C%2Fb%3E+None%3C%2Fli%3E%3Cli%3E%3Cb%3EDepartment%3A%3C%2Fb%3E+Unknown%3C%2Fli%3E%3Cli%3E%3Cb%3EJamf+Pro+ID%3A%3C%2Fb%3E+1234567%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22Device+Details+-+MacBook+Air+SN%3A+XYZ12345%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Jamf** **Connector** before installing this plugin. Please follow the [Jamf Connector](https://marketplace.moveworks.com/connectors/jamf?hist=home#how-to-implement) guide to configure the connection.

**Note:** 

To enable access to Jamf Pro API endpoints, ensure that the appropriate privileges are assigned to the user via:

 **Settings → API Roles and Clients → API Roles → Tokens**.

Specifically, confirm that the following privilege is granted:

- **Read Computers**

This permission is required to retrieve user-related data and perform advanced searches within the Jamf Pro environment using the API.

**Callout:** The Jamf Pro **`/mobile-devices`** endpoint does not support filtering or partial search. Filtering using `filter=` parameters is supported **only for the `/computers-inventory`** endpoint.

**Tenant Configuration:**

All Jamf Pro API endpoints in this plugin use **`YOUR_INSTANCE`** as a placeholder. After installation, replace **`YOUR_INSTANCE`** in the API calls with your actual Jamf instance name.

To find your instance name:

- Log into Jamf Pro.
- Check the URL in your browser — the instance name appears before `.jamfcloud.com`, e.g.:
    
    **`https://YOUR_INSTANCE.jamfcloud.com/...`**
    
    Make sure to update this across all actions that reference the Jamf Pro API.
    

Once the connector is successfully configured, follow our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.

## **Appendix**

### **API #1: Find Orphaned Devices**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/v1/computers-inventory?section=USER_AND_LOCATION,HARDWARE,GENERAL&filter={{filter_query}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters**

- `{{filter_query}}` – A **dynamic RSQL filter** constructed based on the user’s input or search context.

**API Filters:**

1. All orphaned devices **-** `userAndLocation.username=='' or userAndLocation.username==null`
2. Partial search by device name **-** `general.name=='*{{device_name}}*'`
3. Orphaned devices by device id -  `(id=='{{device_id}}') and (userAndLocation.username=='' or userAndLocation.username==null)`

**Query Parameters:**

- `{{device_name}}` – The partial or full name of the device to match against Jamf inventory records.
- `{{device_id}}` – The unique identifier (ID) of the device in Jamf Pro used for an exact match.

**Note:** 

- This setup enables a **single API structure** to support both broad and targeted searches for orphaned devices — whether by username, device name, or a specific device record — improving flexibility and reducing redundant endpoint calls.
- In JAMF, the username is mandatory for filtering; full name cannot be used.