---
availability: IDEA
description: A plugin that allows IT administrators to quickly assign or reprovision
  managed apple computers to new owners in Jamf directly through the Moveworks AI
  Assistant.
domain:
- IT
- Access Management
fidelity: GUIDE
name: Assign a Computer to a New Owner
difficulty_level: INTERMEDIATE
time_in_minutes: 15
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+assign+a+Macbook+Pro+device+to+a+new+person%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+should+this+device+be+assigned+to+%E2%80%94+please+provide+the+employee%E2%80%99s+name+or+email%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E+for+users+matching+%5C%22John%5C%22...%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+2+users+matching+%27John%27%3A+%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EJohn+Doe%3C%2Fb%3E+%28john.doe%40company.com%2C+IT+Department%29%3C%2Fli%3E%3Cli%3E%3Cb%3EJohn+Adams%3C%2Fb%3E+%28john.adams%40company.com%2C+Sales+Department%29%3C%2Fli%3E%3C%2Ful%3EWhich+one+do+you+mean%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22John+Doe%22%7D%2C%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22John+Adams%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E+for+%27Macbook+Pro%27+devices+that+are+currently+unassigned+and+available+for+assignment...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+the+new+owner+will+be+John+Doe.+I+found+the+following+Macbook+Pro+devices.+Which+one+do+you+want+to+assign+to+John+Doe%3F%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMacBook+Pro%3C%2Fstrong%3E+%28Serial+C02XXX123%2C+macOS+14.1%2C+currently+unassigned%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMacBook+Pro%3C%2Fstrong%3E+%28Serial+ABCDEF456%2C+macOS+14.2%2C+currently+unassigned%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+Pro+C02XXX123%22%7D%2C%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+Pro+ABCDEF456%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+one+owned+by+Alex+Martinez%2C+serial+C02XXX123.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+assign+the+device+%3Cstrong%3EMacbook+Pro+%28C02XXX123%29%3C%2Fstrong%3E+to+%3Cstrong%3EJohn+Doe+%28john.doe%40company.com%29%3C%2Fstrong%3E.+The+updated+fields+will+include+username%2C+full+name%2C+email%2C+and+department.+%3Cstrong%3EDoes+this+look+correct%3F%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Confirm%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESuccessfully+assigned+%3Cstrong%3EMacbook+Pro+%28Serial+C02XXX123%29%3C%2Fstrong%3E+to+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22Macbook+Pro+C02XXX123%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf

---
## Introduction

The **“Assign a Device to a New Owner”** plugin enables IT administrators to efficiently assign or reassign managed devices (computers) to new owners in Jamf through the Moveworks AI Assistant. This automation allows admins to search for users by name or email, view matching user profiles and available devices, and complete the reassignment in a single step. The plugin automatically updates ownership details—including username, full name, email, and department—ensuring accurate asset records and streamlining device handoffs.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started

## Prerequisites

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+assign+a+Macbook+Pro+device+to+a+new+person%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+should+this+device+be+assigned+to+%E2%80%94+please+provide+the+employee%E2%80%99s+name+or+email%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E+for+users+matching+%5C%22John%5C%22...%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+2+users+matching+%27John%27%3A+%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EJohn+Doe%3C%2Fb%3E+%28john.doe%40company.com%2C+IT+Department%29%3C%2Fli%3E%3Cli%3E%3Cb%3EJohn+Adams%3C%2Fb%3E+%28john.adams%40company.com%2C+Sales+Department%29%3C%2Fli%3E%3C%2Ful%3EWhich+one+do+you+mean%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22John+Doe%22%7D%2C%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22John+Adams%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJamf%3C%2Fb%3E+for+%27Macbook+Pro%27+devices+that+are+currently+unassigned+and+available+for+assignment...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+the+new+owner+will+be+John+Doe.+I+found+the+following+Macbook+Pro+devices.+Which+one+do+you+want+to+assign+to+John+Doe%3F%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMacBook+Pro%3C%2Fstrong%3E+%28Serial+C02XXX123%2C+macOS+14.1%2C+currently+unassigned%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMacBook+Pro%3C%2Fstrong%3E+%28Serial+ABCDEF456%2C+macOS+14.2%2C+currently+unassigned%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+Pro+C02XXX123%22%7D%2C%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+Pro+ABCDEF456%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+one+owned+by+Alex+Martinez%2C+serial+C02XXX123.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+assign+the+device+%3Cstrong%3EMacbook+Pro+%28C02XXX123%29%3C%2Fstrong%3E+to+%3Cstrong%3EJohn+Doe+%28john.doe%40company.com%29%3C%2Fstrong%3E.+The+updated+fields+will+include+username%2C+full+name%2C+email%2C+and+department.+%3Cstrong%3EDoes+this+look+correct%3F%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Confirm%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESuccessfully+assigned+%3Cstrong%3EMacbook+Pro+%28Serial+C02XXX123%29%3C%2Fstrong%3E+to+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22Macbook+Pro+C02XXX123%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

### **Installation Steps**

We recommend setting up Jamf before installing this plugin. Please follow the [Jamf-Connector](https://marketplace.moveworks.com/connectors/jamf?hist=home#how-to-implement) guide to configure the connection.

**Note:** To enable access to the Jamf API endpoints used in this plugin, ensure that the following API roles are assigned to the API Client Settings → API Roles and Clients → API Roles → [Your API Role].

Specifically, confirm that the following privileges are granted:

- **Read Users**
- **Read Computers**
- **Update Computers**

This permission is required to retrieve user-related data and perform advanced searches within the Jamf Pro environment using the API.

Once the connector is successfully configured, follow our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.

## **Appendix**

### **API #1 : Search User By User Name**

```bash
curl --location 'https://<YOUR_INSTANCE>/JSSResource/users/name/{{username}}' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Accept: application/json'
```

**Query Parameters:**

**`username`** (string) – The full name of the user to search for in Jamf.

### **API #2 : Search User By User Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/JSSResource/users/name/{{user_email}}' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Accept: application/json'
```

**Query Parameters:**

**`user_email`** (string) – The Email address of the user to search for in Jamf.

### **API #3 : Get Unassigned Computer Inventory**

```bash
curl --location 'https://<YOUR_INSTANCE>/v2/computers-inventory?section={{section}}&filter={{filter}}' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Accept: application/json'
```

**Query Parameters:**

- **`section`** (string) – Section of the inventory to return, e.g., `USER_AND_LOCATION`.
- **`filter`** (string) – Filter expression to limit results, e.g., `(userAndLocation.username==" " or userAndLocation.username==null)` for unassigned devices.

### **API #4 : Assign User To A Device**

```bash
curl --location --request PATCH 'https://<YOUR_INSTANCE>/api/v1/computers-inventory-detail/{{computer_id}}' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "userAndLocation": {
    "username": "{{username}}",
    "realname": "{{realname}}",
    "email": "{{email}}",
    "position": "{{position}}",
    "phone": "{{phone}}"
  }
}'
```

**Path Parameters:**

- **`computer_id`** (integer) – The ID of the computer to assign in Jamf.

**Request Body Fields:**

- **`username`** (string) – The new owner’s Jamf username.
- **`realname`** (string) – The full name of the new owner.
- **`email`** (string) – Email address of the new owner.
- **`position`** (string) – Job title or role of the new owner.
- **`phone`** (string) – Contact number of the new owner.

### **User Identification in Jamf**

In Jamf, **Username** is the only mandatory user field — **Full Name** is optional and cannot be used for filtering.

When using the **Moveworks chatbot** for this plugin:

- If the **Username** is provided, it will be used for an **exact search** via the Jamf Users API (`/JSSResource/users/name/{{username}}`).
- If the **Username** is not available, the user can provide their **Email**, which will also be used for an **exact search** via the same API.
- Searches based on **Full Name** are **not supported**.

This ensures the bot can reliably identify users using either **Username** or **Email**.

### **Important Notes**

- We can **only assign a device to a user**, not assign a user to a device.
- This process **does not update the extension attributes** for a device.
- Instead, it **updates the “User and Location” section** of a device, which is the **standard approach** in Jamf.
- Other related user details and metadata are also updated accordingly to maintain consistency.
