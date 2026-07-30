---
availability: INSTALLABLE
name: Update Presence Routine
description: Lets employees set which days of the week they plan to be in the office and which they plan to work remotely in the ServiceNow WSD module, effective immediately, via the Moveworks AI Assistant.
installation_asset_uuid: 4cc8b91f-af03-484f-aa9a-741cc28d9a45
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+update+my+weekly+office+routine.+I%27m+planning+to+be+in+the+office+every+Tuesday+and+Thursday+now.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ERetrieving+your+current+presence+settings+from+%3Cb%3EServiceNow%3C%2Fb%3E...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EUpdating+your+baseline+routine+to+Tuesdays+and+Thursdays...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone%21+I%27ve+updated+your+weekly+routine.+Your+default+schedule+is+now+set+to+%3Cb%3EIn-Office%3C%2Fb%3E+every+%3Cb%3ETuesday+and+Thursday%3C%2Fb%3E%2C+with+all+other+days+set+to+remote.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Presence+Routine%3A+Weekly+Baseline%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Workplace
- Workplace Service Delivery
- Workplace Experience
- Facilities
- Workspace
- Collaboration
systems:
- servicenow
---

# Description

An employee's routine is the baseline for where they work each week. Through the Moveworks AI Assistant, they can update which days they plan to be in the office and which they work remotely — to match a new team norm, a policy, or the colleagues they coordinate with. Changes to the routine take effect immediately and become the default the rest of the presence picture is built on.

# User Experience Preview

Refer to the [**Purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+update+my+weekly+office+routine.+I%27m+planning+to+be+in+the+office+every+Tuesday+and+Thursday+now.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ERetrieving+your+current+presence+settings+from+%3Cb%3EServiceNow%3C%2Fb%3E...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EUpdating+your+baseline+routine+to+Tuesdays+and+Thursdays...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone%21+I%27ve+updated+your+weekly+routine.+Your+default+schedule+is+now+set+to+%3Cb%3EIn-Office%3C%2Fb%3E+every+%3Cb%3ETuesday+and+Thursday%3C%2Fb%3E%2C+with+all+other+days+set+to+remote.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Presence+Routine%3A+Weekly+Baseline%22%7D%5D%7D%5D%7D%5D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# Pre-requisites

Before installing and using the **Update Presence Routine** plugin, ensure that the following requirements are met:

## **1. ServiceNow's Workplace Concierge**

This plugin requires an active **Workplace Concierge** installation and configuration on your ServiceNow instance.

- If you have not installed and configure the application, follow the **[Install Workplace Concierge](https://www.servicenow.com/docs/r/employee-service-management/workplace-concierge/install-workplace-concierge.html)** documentation
- The minimum version of the Workplace Concierge application is: 1.7.11
- After the app is configured, follow the **[plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation)** for detailed steps on how to install and activate the plugin in **Agent Studio**.
## **2. User Identity Ingestion from ServiceNow**
This plugin operates on presence records under the requesting user's own ServiceNow identity. The `requested_for` fields are populated by dot-walking the user's profile in the Data Bank: `meta_info.user.external_system_identities.snow.external_id`

The `external_id` serves two purposes:
1. **Authentication & role verification** — the `external_id` is used to verify that the user has the required `sn_wsd_core.workplace_user` role in ServiceNow. Without this, API calls will fail regardless of authentication status.
2. **Presence operations** — all presence operations are scoped to the authenticated user's identity in ServiceNow.

This reads the user's ServiceNow `sys_id` from the identity source linked to their Moveworks profile, so your users must be ingested from ServiceNow for this value to populate. To set up user identity for your org, read our help docs on Identity Configuration in [**Moveworks Setup**](https://help.moveworks.com/service-management/moveworks-setup/identity-configuration).
>⚠️ **Important — update this mapping to match your setup**. The `snow` key in that path must exactly match the name of `your` ServiceNow identity source in Moveworks Setup. If yours is named differently (e.g. `servicenow_prod`), update the Compound Action mapping to `meta_info.user.external_system_identities.servicenow_prod.external_id`. If it doesn't match, the path resolves to null and both authentication and presence operations will fail.
## **3. ServiceNow Connector**

This plugin requires an active **ServiceNow connector** configured with **OAuth 2.0 using the Authorization Code grant (user-based / User Consent auth)**.

- If you have not already configured the connector, follow the [**OAuth 2.0 Authorization Code guide**](https://docs.moveworks.com/agent-studio/connectors/http-connectors/oauth-20-authorization-code). The connector must be fully set up before installing this plugin.

# Implementation details

**Note:** References to the instance must be updated after the plugin is installed.

## Visual representation of how the plugin works
![Conversation flow](Update%20Presence%20Routine/flow.png)

## API Details

Before running the cURL examples, replace `YOUR_INSTANCE` with your instance hostname and `ACCESS_TOKEN` with the OAuth access token issued for the user.

### **API: Resolve Collaborator Name**

This REST API is used to resolve the name of the employee based on the provided input, initially filtering based on employees within their team before searching the complete directory.

----

### **API: Get Presence Data**

This REST API is always used and reads the current Presence Routine. 

```bash
curl --location 'https://<YOUR_INSTANCE>/api/sn_wsd_concierge/presence?include=collaborators' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Accept: application/json'
```

**Note**
- If the user has no routine record yet, `routine` still comes back as this same shape with every day defaulted to `false`.

### **API: Update Presence Routine**

This REST API updates the employee Presence Routine matching the intent.

```bash
curl --location --request PATCH 'https://<YOUR_INSTANCE>/api/sn_wsd_concierge/presence/routine' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --header 'Accept: application/json' \
  --data '{
    "routine": {
      "friday": false
    }
  }'
```

**Request Body**
- `routine` — Specify **the days of the week** that must be changed. Example: `Monday`, `Tuesday`, etcetera

**Notes**
- Presence Routine updates the current schedule. It is not possible to change the routine for a future date.


### API References

This plugin uses **Workplace Concierge** and **Workplace Core REST APIs** to retrieve information.

For detailed information on request parameters, response formats, error handling, and versioning, refer to the **[official ServiceNow documentation](https://developer.servicenow.com/dev.do#!/reference/)**.

# **What Is In Scope for This Plugin?**

- Update one or multiple days in the Presence Routine.

# **What Is Out of Scope for This Plugin?**

- Creating a new Presence Routine.
- Creating exceptions for individual dates requires the `Set Presence Status` plugin.
- Managing collaborators requires the `Manage Presence Collaborators` plugin.
- Managing the Presence Routine from other employees.