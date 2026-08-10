---
availability: INSTALLABLE
name: Set Presence Status
description: Lets employees record a one-off change to where they are working on a given date in the ServiceNow WSD module and keep collaborators informed, without changing their standing routine, via the Moveworks AI Assistant.
installation_asset_uuid: 9ad7c841-af84-4231-9399-303212fda944
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWill+be+working+this+Friday+from+Building+A%2C+please+update+my+status.%3C%2Fp%3E%3Cp%3E%3C%2Fp%3E%3Cp%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ERunning+Set_Presence_Status%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3ECalling+Set_Presence_Status%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ERunning+Set_Presence_Status+and+processing+updates%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EReflecting%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3EChoosing+building+options%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%2C%22content%22%3A%5B%5D%2C%22connectorName%22%3A%22%22%2C%22overrideImageUrl%22%3A%22%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EHandling+Set_Presence_Status%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3ECalling+Set_Presence_Status%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ERunning+Set_Presence_Status+and+processing+updates%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%2C%22content%22%3A%5B%5D%2C%22connectorName%22%3A%22%22%2C%22overrideImageUrl%22%3A%22%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ESetting+your+in-office+status+for+Friday%2C+July+24%2C+at+Building+A+%28Campus%29.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EResolved+details%3A%3C%2Fstrong%3E+Date+is+2026-07-24+and+status+is+in+office.%3C%2Fp%3E%22%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%2C%22userConfig%22%3A%7B%22userName%22%3A%22You%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D
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

Some days don't follow the usual pattern. When an employee is coming into the office on a normally-remote day, working from home on an in-office day, or visiting a different location than usual, they can set a presence status for that specific date through the Moveworks AI Assistant. It records the exception without changing their standing routine — and collaborators can see it, so the people they work with know where they'll actually be.


# User Experience Preview

Refer to the [**Purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWill+be+working+this+Friday+from+Building+A%2C+please+update+my+status.%3C%2Fp%3E%3Cp%3E%3C%2Fp%3E%3Cp%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ERunning+Set_Presence_Status%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3ECalling+Set_Presence_Status%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ERunning+Set_Presence_Status+and+processing+updates%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EReflecting%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3EChoosing+building+options%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%2C%22content%22%3A%5B%5D%2C%22connectorName%22%3A%22%22%2C%22overrideImageUrl%22%3A%22%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EHandling+Set_Presence_Status%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3ECalling+Set_Presence_Status%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ERunning+Set_Presence_Status+and+processing+updates%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%2C%22content%22%3A%5B%5D%2C%22connectorName%22%3A%22%22%2C%22overrideImageUrl%22%3A%22%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ESetting+your+in-office+status+for+Friday%2C+July+24%2C+at+Building+A+%28Campus%29.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EResolved+details%3A%3C%2Fstrong%3E+Date+is+2026-07-24+and+status+is+in+office.%3C%2Fp%3E%22%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%2C%22userConfig%22%3A%7B%22userName%22%3A%22You%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# Pre-requisites

Before installing and using the **Set Presence Status** plugin, ensure that the following requirements are met:

## **1. ServiceNow's Workplace Concierge**

This plugin requires an active **Workplace Concierge** installation and configuration on your ServiceNow instance.

- If you have not installed and configured the application, follow the **[Install Workplace Concierge](https://www.servicenow.com/docs/r/employee-service-management/workplace-concierge/install-workplace-concierge.html)** documentation
- The minimum version of the Workplace Concierge application is: 1.7.11
- After the app is configured, follow our **[plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation)** for detailed steps on how to install and activate the plugin in **Agent Studio**.
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
![Conversation flow](Set%20Presence%20Status/flow.png)

## API Details

Before running the cURL examples, replace `YOUR_INSTANCE` with your instance hostname and `ACCESS_TOKEN` with the OAuth access token issued for the user.

### **API: Resolve Collaborator Name**

This REST API is always used to retrieve the employee's office schedule.

```bash
curl --location 'https://<YOUR_INSTANCE>/api/sn_wsd_concierge/presence?include=collaborators' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Accept: application/json'
```

**Note**
- There is no explicit date-range parameter. The date values used are today and the date three months out. 


### **API: Post Exception**

This REST API creates an exception based on the employee's intent. Setting `in office` when they are normally `remote`, and `remote` when they are planned to be `in office`.

```bash
curl --location 'https://<YOUR_INSTANCE>/api/sn_wsd_concierge/presence/exception' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --data '{
    "user_id": "<user_sys_id>",
    "exception": {
      "date": "2026-07-17",
      "inOffice": false
    }
  }'
```

**Body Parameters**
- `date`: This specifies the date of the required change (in `yyyy-MM-dd` format).
- `inOffice`: This specifies the in office status; `false` indicates **remote** and `true` indicates **in-office**.
- `location` (optional): The id of the building the employee will visit for the specified date.
- `origin` (optional): Used to capture the source of the changes, default is `user`.

**Note**
- Exceptions can be created up to three months in the future.

### **API: Put Exception**

This REST API updates an existing exception based on the employee's intent.

```bash
curl --location --request PUT 'https://<YOUR_INSTANCE>/api/sn_wsd_concierge/presence/exception' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --data '{
    "user_id": "<user_sys_id>",
    "exception": {
      "date": "2026-07-17",
      "inOffice": true
    }
  }'
```
**Body Parameters**
- `date`: This specifies the date of the required change (in `yyyy-MM-dd` format).
- `inOffice`: This specifies the in office status; `false` indicates **remote** and `true` indicates **in-office**.
- `location` (optional): The id of building the employee will visit for the specified date.

**Note**
- Planned exceptions up to three months in the future can be updated.

### **API: Delete Exception**

This REST API removes an existing exception for an indicated date. An exception can be deleted when a change matches the default presence schedule of the employee.


```bash
curl --location --request DELETE 'https://<YOUR_INSTANCE>/api/sn_wsd_concierge/presence/exception/<EXCEPTION_SYS_ID>' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Accept: application/json'
```

**Path Parameter**
- `EXCEPTION_SYS_ID`: This is the sys_id of the exception that must be deleted. 

**Note**
- Planned exceptions up to three months in the future can be deleted.


### API References

This plugin uses **Workplace Concierge** and **Workplace Core REST APIs** to retrieve information.

For detailed information on request parameters, response formats, error handling, and versioning, please refer to the **[official ServiceNow documentation](https://developer.servicenow.com/dev.do#!/reference/)**.

# **What Is In Scope for This Plugin?**
- Create an exception on the employees default in-office schedule for a specific date.
- Create an exception while visiting a different office location.
- Update exceptions when changes are required.
- Remove exceptions when it matches the employees' schedule.


# **What Is Out of Scope for This Plugin?**

- Updating the employee routine, which requires the `Update Presence Routine` plugin.
- Setting exceptions for a date range or in a recurring pattern.
- Listing or viewing the requester's current collaborators or their presence/routine data requires the `View Presence` plugin.
- Creating an exception for a colleague.
- Managing who has visibility to the presence schedule or created exceptions.