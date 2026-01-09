---
availability: INSTALLABLE
description: A plugin that shows holidays for an employee's specific region.
installation_asset_uuid: 0747a27d-ff0a-4e14-b843-60df1230296f
name: Look Up Holiday Schedule
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What%27s+the+holiday+schedule%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFetching+%3Cstrong%3EHoliday+Schedule%3C%2Fstrong%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EFor+US+employees%2C+the+holiday+schedule+includes%3A%3Cbr%3E%5Cn-+New+Year%27s+Day%3Cbr%3E%5Cn-+Memorial+Day%3Cbr%3E%5Cn-+Independence+Day%3Cbr%3E%5Cn-+Labor+Day%3Cbr%3E%5Cn-+Thanksgiving+Day+and+the+following+Friday%3Cbr%3E%5Cn-+Christmas+Day%3Cbr%3E%5CnEmployees+are+also+eligible+for+two+floating+holidays+per+year.+Is+there+anything+else+you+need+assistance+with%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%222024+US+Holiday+Calendar%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Benefits
- HR - Onboarding
- HR - Other
- HR - Time & Absence
systems:
- workday
---

# **Introduction :**

The **Look Up Holiday Schedule** plugin allows users to retrieve the holiday schedule for a specific employee directly from Workday through the Moveworks AI Assistant. With this plugin, users can quickly access and review upcoming holidays as defined in Workday.
This guide will help you install and configure the plugin in Agent Studio within minutes. Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6991%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22What%27s+the+holiday+schedule%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EHoliday+Schedule%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Holiday+Schedule%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22For+US+employees%2C+the+holiday+schedule+includes%3A%3Cbr%3E-+New+Year%27s+Day%3Cbr%3E-+Memorial+Day%3Cbr%3E-+Independence+Day%3Cbr%3E-+Labor+Day%3Cbr%3E-+Thanksgiving+Day+and+the+following+Friday%3Cbr%3E-+Christmas+Day%3Cbr%3EEmployees+are+also+eligible+for+two+floating+holidays+per+year.+%F0%9F%91%8D+Is+there+anything+else+you+need+assistance+with%3F%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in Agent Studio beforehand to streamline the process. Please follow our  [Workday Connector Guide](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement)  to do so. Once completed, follow our plugin installation documentation to install the  **Look Up Holiday Schedule** plugin in minutes.

For **Look Up Holiday Schedule**, you will also need to ensure the following permissions are in place:

**Required Scopes:**

- `User Profile Access`
- `Employee Data Access`

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

## API #1: Get_Worker_ID

The **Get_Worker_ID** API retrieves a worker id using user’s full_name.

```bash
curl --request GET
--location 'https://<DOMAIN>.myworkday.com/ccx/api/v1/<INSTANCE>/workers?search=<full_name>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Query Parameters :**

- `full_name` (string) – The fullname of the user whose worker id you want to retrieve.

## API #2: Holiday_Schedule_Workday

The **Holiday_Schedule_Workday** API retrieves a holiday schedule using user’s worker id.

```bash
curl --request GET
--location 'https://<DOMAIN>.myworkday.com/api/holiday/v1/<INSTANCE>/holidayEvents?fromDate=2024-01-01&toDate=2024-12-31&limit=100&offset=1&worker=<Worker_id>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Query Parameters :**

- `Worker_id` (string) – The Worker_id of the user whose holiday schedule you want to retrieve.