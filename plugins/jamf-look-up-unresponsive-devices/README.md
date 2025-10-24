---
availability: IDEA
description: A plugin that allows IT administrators and support teams to identify
  devices that haven't checked in to Jamf within the Moveworks AI Assistant.
domain:
- IT
- Access Management
fidelity: GUIDE
name: Look Up Unresponsive Devices
difficulty_level: INTERMEDIATE
time_in_minutes: 20
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+look+up+unresponsive+devices.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+is+the+maximum+time+since+they+last+checked+in+%28e.g.%2C+%3Cstrong%3E7+days%3C%2Fstrong%3E%2C+%3Cstrong%3E30+days%3C%2Fstrong%3E%29%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+devices+that+haven%27t+checked+in+for+14+days.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESearching+%3Cb%3EJamf%3C%2Fb%3E+for+%3Cb%3Edevices%3C%2Fb%3E+that+haven%27t+checked+in+for+%3Cb%3E14+days%3C%2Fb%3E.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+%3Cstrong%3E3+iPhones%3C%2Fstrong%3E+that+have+not+checked+in+within+the+last+14+days%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EiPhone+13%3C%2Fstrong%3E+-+SN%3A+FGH789KLM+-+Last+Check-in%3A+2024-05-01%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EiPhone+SE%3C%2Fstrong%3E+-+SN%3A+PQR012STU+-+Last+Check-in%3A+2024-04-28%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EiPhone+12+Pro%3C%2Fstrong%3E+-+SN%3A+VWX345YZA+-+Last+Check-in%3A+2024-05-05%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22iPhone+13+%28FGH789KLM%29%22%7D%2C%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22iPhone+SE+%28PQR012STU%29%22%7D%2C%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22iPhone+12+Pro+%28VWX345YZA%29%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- jamf

---
## Introduction

The “**Look Up Unresponsive Devices**” plugin allows IT administrators and support teams to quickly identify computers that haven’t checked in to **Jamf** within a specified timeframe. Using the Moveworks AI Assistant, IT teams can instantly view which devices are offline or inactive, helping detect lost, decommissioned, or noncompliant assets. This plugin streamlines device monitoring, ensuring timely action and maintaining organizational IT compliance

## **Prerequisites**

- Access to Agent Studio

### Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+check+unresponsive+devices%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+can+help+you+find+unresponsive+devices.+To+begin%2C+please+specify+a+date+range.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EYou+can+also+refine+your+search+to%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3ESearch+for+%3Cstrong%3Eall+devices%3C%2Fstrong%3E+within+a+given+date+range%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ESearch+by+%3Cstrong%3Edevice+name%3C%2Fstrong%3E+%28e.g.%2C+%5C%22Macbook+Pro%5C%22%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ESearch+by+%3Cstrong%3Euser+email%3C%2Fstrong%3E+%28e.g.%2C+%5C%22john%40acme.corp%5C%22%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ESearch+by+%3Cstrong%3Euser+name%3C%2Fstrong%3E+%28e.g.%2C+%5C%22johnacme%5C%22%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22search+for+devices+assigned+to+john%40acme.corp+over+the+last+quarter%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJAMF%3C%2Fb%3E+for+unresponsive+devices+assigned+to+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Ejohn%40acme.corp%3C%2Fb%3E+over+the+last+quarter...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Found+multiple+devices+matching+your+criteria.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+devices+assigned+to+%3Cb%3Ejohn%40acme.corp%3C%2Fb%3E+that+might+be+unresponsive%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3EMacBook+Pro+%28Serial%3A+C02P1234XYZ%29%3C%2Fli%3E%3Cli%3EMacBook+Air+%28Serial%3A+C02Q5678ABC%29%3C%2Fli%3E%3Cli%3EiMac+%28Serial%3A+W80K9012DEF%29%3C%2Fli%3E%3C%2Fol%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWhich+device+would+you+like+to+view+details+for%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+MacBook+Pro+with+serial+C02P1234XYZ%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Retrieving+unresponsiveness+details+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EMacBook+Pro+%28Serial%3A+C02P1234XYZ%29%3C%2Fb%3E+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJAMF%3C%2Fb%3E...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Successfully+retrieved+device+details+and+unresponsiveness+summary.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+details+for+the+%3Cb%3EMacBook+Pro+%28Serial%3A+C02P1234XYZ%29%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EAssigned+User%3A%3C%2Fb%3E+John+Doe+%28john%40acme.corp%29%3C%2Fli%3E%3Cli%3E%3Cb%3ELast+Check-in%3A%3C%2Fb%3E+2024-03-15+10%3A30+AM%3C%2Fli%3E%3Cli%3E%3Cb%3ELast+Network+Activity%3A%3C%2Fb%3E+2024-03-14+05%3A00+PM%3C%2Fli%3E%3Cli%3E%3Cb%3EOperating+System%3A%3C%2Fb%3E+macOS+Sonoma+14.3%3C%2Fli%3E%3Cli%3E%3Cb%3EJamf+Pro+Version%3A%3C%2Fb%3E+10.46.0%3C%2Fli%3E%3Cli%3E%3Cb%3EUnresponsiveness+Summary%3A%3C%2Fb%3E+This+device+has+not+checked+into+Jamf+Pro+for+%3Cb%3E48+days%3C%2Fb%3E.+No+network+activity+detected+for+%3Cb%3E49+days%3C%2Fb%3E.%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22jamf%22%2C%22citationTitle%22%3A%22MacBook+Pro+%28Serial%3A+C02P1234XYZ%29%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we **recommend setting up the Jamf connector in Agent Studio beforehand** to simplify the process. Follow the [Jamf Connector Guide](https://marketplace.moveworks.com/connectors/jamf?hist=home#how-to-implement) for detailed instructions.

Once completed, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) to install the **Look Up Responsive Devices** plugin in minutes.

**Required Privileges:**

As an admin, ensure that the following **privileges are granted** to the API user to successfully install and use this plugin:

- **Read Computers**
- **Read Computer Check-In**

**Note:** These privileges allow the plugin to retrieve computer details, including last check-in times, and identify devices that are currently responsive. Make sure the API user has **only these privileges** to minimize security risks.

**Endpoint Guidelines:**

- The **Jamf Pro `/mobile-devices` endpoint does not support filtering or partial search**.
- Filtering using `filter=` parameters is supported **only for the `/computers-inventory` endpoint**.

**Your Instance Configuration:**

All Jamf API endpoints in this plugin use **`{{YOUR_INSTANCE}}`** as a placeholder. After installation, replace **`{{YOUR_INSTANCE}}`** in the action definitions with your actual Jamf instance name.

To find your instance name:

1. Log in to your Jamf Pro account.
2. Check the URL in your browser — the instance name appears before `.jamfcloud.com`
    - e.g., `https://your_instance.jamfcloud.com` → instance name = **`{{YOUR_INSTANCE}}`**

Make sure to update this across all actions that reference the Jamf API.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on installing and activating the plugin in Agent Studio.

### **API #1: Search Devices by Criteria**

```bash
curl --location 'https://{{YOUR_INSTANCE}}/api/v1/computers-inventory?section=USER_AND_LOCATION,HARDWARE,GENERAL&filter={{filter_query}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Query Parameters:**

- `filter_query` → A dynamic RSQL filter applied to search or narrow results based on user-defined criteria.
- `devicename` → Partial or full device name to match in Jamf inventory.
- `username` → Username of the device owner (**required** for username-based search).
- `email` → Email of the device owner (used when username is unavailable).
- `start_time` / `end_time` → Time range used to filter devices by their last contact times.

**RSQL Filtering Notes:**

- Use **RSQL syntax** in the `filter_query` parameter to filter on different objects/conditions.
- Common examples:
    - **Device Name:** `general.name==*{{devicename}}*`
    - **Username:** `userAndLocation.username==*{{username}}*`
    - **Email:** `userAndLocation.email=={{email}}`
    - **Last Contact Time Range:** `general.lastContactTime=ge='{{start_time}}' and general.lastContactTime=le='{{end_time}}'`
- Filters can be **combined** using:
    - `;` → AND
    - `,` → OR

**Example of a Compound RSQL Filter:**

```bash
userAndLocation.username==*{{username}}*;general.lastContactTime=ge='{{start_time}}' and general.lastContactTime=le='{{end_time}}'

```

**Example Response:**

```bash
{
  "totalCount": 7,
  "results": [
    {
      "id": "XX",
      "general": {
        "name": "XXXX",
        "lastContactTime": "YYYY-MM-DDTHH-MM-SS",
        "assetTag": "XXX",
        "platform": "XXX"
      },
      "hardware": {
        "serialNumber": "XXXXX",
        "make": "XXX",
        "model": "XXX"
      },
      "userAndLocation": {
        "username": "XXX"
      }
    }
  ]
}
```

**Notes:**

- This single API endpoint supports **flexible searches**, allowing filtering by device attributes, user details, and last contact times.
- **Last contact time** indicates when a device was last checked in with Jamf Pro and is used to identify **currently unresponsive devices**.