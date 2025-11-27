---
availability: IDEA
description: A plugin that allows IT admins to create a new computer inventory record
  in Jamf through the Moveworks AI Assistant. It collects device metadata and submits
  it to the Jamf Pro inventory system.
domain:
- IT
- Access Management
fidelity: GUIDE
name: Create a Computer Inventory Record
difficulty_level: BEGINNER
time_in_minutes: 20
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+add+a+new+computer+to+our+inventory%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+you+with+that.+Please+specify+the+following+details+for+the+new+computer%3A%3C%2Fp%3E%3Col%3E%3Cli%3ESerial+Number%3C%2Fli%3E%3Cli%3EName%3C%2Fli%3E%3Cli%3EDepartment%3C%2Fli%3E%3Cli%3EAssigned+User+Email%3C%2Fli%3E%3Cli%3EModel+Name%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+add+a+new+Macbook+Pro+M3+to+our+inventory%2C+with+serial+number+as+STWNFM1435.+You+can+tag+it+to+department+Product+Management%2C+and+assign+it+to+jdoe%40acme.corp.+The+exact+laptop+model+is+MACBOOK_PRO_M3_2023%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Parsing+user+input+and+extracting+details.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Checking+%3Cb%3EJamf%3C%2Fb%3E+for+existing+computer+with+serial+number+%3Ccode%3ESTWNFM1435%3C%2Fcode%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EIt+looks+like+a+device+with+serial+number+%3Ccode%3ESTWNFM1435%3C%2Fcode%3E+already+exists+in+%3Cb%3EJamf%3C%2Fb%3E.+Is+this+a+different+device%2C+or+did+you+provide+an+incorrect+serial+number%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22This+is+the+corrected+serial+number+-+STWNFM1436%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Updated+serial+number+to+%3Ccode%3ESTWNFM1436%3C%2Fcode%3E.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Verifying+%3Ccode%3ESTWNFM1436%3C%2Fcode%3E+does+not+exist+in+%3Cb%3EJamf%3C%2Fb%3E.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+for+user+%3Ccode%3Ejdoe%40acme.corp%3C%2Fcode%3E+in+user+directory.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27m+ready+to+create+a+new+computer+inventory+record+in+%3Cb%3EJamf%3C%2Fb%3E+with+the+following+details%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ESerial+Number%3C%2Fb%3E%3A+STWNFM1436%3C%2Fli%3E%3Cli%3E%3Cb%3EName%3C%2Fb%3E%3A+Macbook+Pro+M3%3C%2Fli%3E%3Cli%3E%3Cb%3EDepartment%3C%2Fb%3E%3A+Product+Management%3C%2Fli%3E%3Cli%3E%3Cb%3EAssigned+User+Email%3C%2Fb%3E%3A+jdoe%40acme.corp%3C%2Fli%3E%3Cli%3E%3Cb%3EModel+Name%3C%2Fb%3E%3A+MACBOOK_PRO_M3_2023%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+correct%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Creating+computer+inventory+record+in+%3Cb%3EJamf%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EGreat%21+The+new+computer+record+has+been+added+to+%3Cb%3EJamf%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22Macbook+Pro+M3+%28STWNFM1436%29%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf

---
## Introduction

The **“Create Computer Inventory Record”** plugin enables IT administrators and support teams to efficiently create new computer inventory entries in **Jamf**. Using the Moveworks AI Assistant, teams can interactively provide device metadata, validate against existing inventory, and submit new records to Jamf Pro. This plugin streamlines IT asset management by reducing duplication, ensuring accurate device tracking, and improving audit readiness and overall IT compliance.

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+add+a+new+computer+to+our+inventory%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+you+with+that.+Please+specify+the+following+details+for+the+new+computer%3A%3C%2Fp%3E%3Col%3E%3Cli%3ESerial+Number%3C%2Fli%3E%3Cli%3EName%3C%2Fli%3E%3Cli%3EDepartment%3C%2Fli%3E%3Cli%3EAssigned+User+Email%3C%2Fli%3E%3Cli%3EModel+Name%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+add+a+new+Macbook+Pro+M3+to+our+inventory%2C+with+serial+number+as+STWNFM1435.+You+can+tag+it+to+department+Product+Management%2C+and+assign+it+to+jdoe%40acme.corp.+The+exact+laptop+model+is+MACBOOK_PRO_M3_2023%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Parsing+user+input+and+extracting+details.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Checking+%3Cb%3EJamf%3C%2Fb%3E+for+existing+computer+with+serial+number+%3Ccode%3ESTWNFM1435%3C%2Fcode%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EIt+looks+like+a+device+with+serial+number+%3Ccode%3ESTWNFM1435%3C%2Fcode%3E+already+exists+in+%3Cb%3EJamf%3C%2Fb%3E.+Is+this+a+different+device%2C+or+did+you+provide+an+incorrect+serial+number%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22This+is+the+corrected+serial+number+-+STWNFM1436%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Updated+serial+number+to+%3Ccode%3ESTWNFM1436%3C%2Fcode%3E.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Verifying+%3Ccode%3ESTWNFM1436%3C%2Fcode%3E+does+not+exist+in+%3Cb%3EJamf%3C%2Fb%3E.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+for+user+%3Ccode%3Ejdoe%40acme.corp%3C%2Fcode%3E+in+user+directory.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27m+ready+to+create+a+new+computer+inventory+record+in+%3Cb%3EJamf%3C%2Fb%3E+with+the+following+details%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ESerial+Number%3C%2Fb%3E%3A+STWNFM1436%3C%2Fli%3E%3Cli%3E%3Cb%3EName%3C%2Fb%3E%3A+Macbook+Pro+M3%3C%2Fli%3E%3Cli%3E%3Cb%3EDepartment%3C%2Fb%3E%3A+Product+Management%3C%2Fli%3E%3Cli%3E%3Cb%3EAssigned+User+Email%3C%2Fb%3E%3A+jdoe%40acme.corp%3C%2Fli%3E%3Cli%3E%3Cb%3EModel+Name%3C%2Fb%3E%3A+MACBOOK_PRO_M3_2023%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+correct%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Creating+computer+inventory+record+in+%3Cb%3EJamf%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EGreat%21+The+new+computer+record+has+been+added+to+%3Cb%3EJamf%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22Macbook+Pro+M3+%28STWNFM1436%29%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we **recommend setting up the Jamf connector in Agent Studio beforehand** to simplify the process. Follow the [Jamf Connector Guide](https://marketplace.moveworks.com/connectors/jamf?hist=home#how-to-implement) for detailed instructions.

**Note:**

To enable access to the required Jamf Pro API endpoints, ensure that the appropriate privileges are assigned to the API user via:

- **Settings → API Roles and Clients → API Roles → {{API_ROLE}}**

**Required Privileges**

As an admin, ensure that the following **privileges are granted** to the API user to successfully install and use the **Create Computer Inventory Record** plugin:

- **Create Computers**
- **Read Departments**

**Note:**

These privileges allow the plugin to retrieve department information and create a new computer inventory entry in Jamf. Make sure the API user has only these permissions if you want to maintain least-privilege security.

**Your Instance Configuration**

All Jamf API endpoints in this plugin use **`{{YOUR_INSTANCE}}`** as a placeholder. After installation, replace **`{{YOUR_INSTANCE}}`** in the action definitions with your actual Jamf instance name.

To find your instance name:

1. Log in to your Jamf Pro account.
2. Look at the URL in your browser — the instance name appears before `.jamfcloud.com`.
    - Example: `https://your_instance.jamfcloud.com` → instance name = **`{{YOUR_INSTANCE}}`**

Make sure to update this across all actions that reference the Jamf API.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on installing and activating the plugin in Agent Studio.

### **API #1: Get All Departments**

```bash
curl --location --request GET 'https://{{YOUR_INSTANCE}}/api/v1/departments' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

### **API #2: Create a Computer Inventory Record**

```bash
curl --location --request POST 'https://{{YOUR_INSTANCE}}/api/v1/computers-inventory' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--data-raw '{
  "udid": "{{udid}}",
  "general": {
    "name": "{{device_name}}"
  },
  "userAndLocation": {
    "email": "{{assigned_user_email}}",
    "departmentId": "{{department_id}}"
  },
  "hardware": {
    "model": "{{model}}", 
    "modelIdentifier": "{{model_identifier}}",
    "serialNumber": "{{serial_number}}"
  },
  "operatingSystem": {
    "name": "{{os_name}}",
    "version": "{{os_version}}"
  }
}'
```

**Request Body Parameters:**

- **`udid`** : Unique device identifier for the computer.
- **`device_name`** : Name of the computer to be created in Jamf.
- **`assigned_user_email`** : Email of the user assigned to the device.
- **`department_id`** : ID of the department the device belongs to.
- **`model`** : Model name of the computer (optional; has no impact unless paired with model identifier).
- **`model_identifier`** : Model identifier of the computer (optional).
- **`serial_number`** : Serial number of the computer being added.
- **`os_name`** : Operating system name (optional).
- **`os_version`** : Version of the operating system (optional).
