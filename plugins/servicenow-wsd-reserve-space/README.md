---
availability: INSTALLABLE
name: Reserve Space
description: Lets employees book a desk, meeting room, or other space in the ServiceNow WSD module for a full day or a set time, in a single request, via the Moveworks AI Assistant.
installation_asset_uuid: ea35cc30-c4cc-4a01-9a2d-62dbddc64900
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+book+a+meeting+room+for+6+people+in+the+%3Cb%3ESan+Francisco+HQ%3C%2Fb%3E+building+on+the+%3Cb%3E5th+floor%3C%2Fb%3E+for+tomorrow+from+2%3A00+PM+to+3%3A00+PM.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+available+rooms+in+SF+HQ%2C+Floor+5+with+at+least+6+seats...%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Filtering+by+user+preferences%3A+checking+for+rooms+with+%27High+Definition+Video%27+capabilities...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+found+a+room+that+matches+your+criteria+and+previous+preferences%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ESpace%3A%3C%2Fb%3E+Conference+Room+5B%3C%2Fli%3E%3Cli%3E%3Cb%3ECapacity%3A%3C%2Fb%3E+8+people%3C%2Fli%3E%3Cli%3E%3Cb%3EFeatures%3A%3C%2Fb%3E+Window+view%2C+Dual+monitors%2C+Polycom+VC%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EWould+you+like+me+to+reserve+this+for+you%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+book+it%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22See+other+options%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+book+it.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Creating+space+reservation+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone%21+I%27ve+reserved+%3Cb%3EConference+Room+5B%3C%2Fb%3E+for+you+tomorrow+at+2%3A00+PM.%3C%2Fp%3E%3Cp%3E%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Fwsd%2Freservation%2FRSV-9901%5C%22%3EView+Reservation+Details%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Conference+Room+5B%22%7D%5D%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D
solution_tags:
- Workplace
- Workplace Service Delivery
- Workplace Experience
- Workspace
- Reservations
- Bookings
systems:
- servicenow
---

# Description

Booking a workspace shouldn't mean scanning a list of spaces for an open slot. An employee can reserve a meeting room, desk, or other space straight from the Moveworks AI Assistant — either by naming the specific space they want, or by booking one the assistant has suggested for them. Reserve for the day, for a set time, or against specific criteria, all in a single request. No portal, no hunting for what's free.

# User Experience Preview

Refer to the [**Purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+book+a+meeting+room+for+6+people+in+the+%3Cb%3ESan+Francisco+HQ%3C%2Fb%3E+building+on+the+%3Cb%3E5th+floor%3C%2Fb%3E+for+tomorrow+from+2%3A00+PM+to+3%3A00+PM.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+available+rooms+in+SF+HQ%2C+Floor+5+with+at+least+6+seats...%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Filtering+by+user+preferences%3A+checking+for+rooms+with+%27High+Definition+Video%27+capabilities...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+found+a+room+that+matches+your+criteria+and+previous+preferences%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ESpace%3A%3C%2Fb%3E+Conference+Room+5B%3C%2Fli%3E%3Cli%3E%3Cb%3ECapacity%3A%3C%2Fb%3E+8+people%3C%2Fli%3E%3Cli%3E%3Cb%3EFeatures%3A%3C%2Fb%3E+Window+view%2C+Dual+monitors%2C+Polycom+VC%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EWould+you+like+me+to+reserve+this+for+you%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+book+it%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22See+other+options%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+book+it.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Creating+space+reservation+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone%21+I%27ve+reserved+%3Cb%3EConference+Room+5B%3C%2Fb%3E+for+you+tomorrow+at+2%3A00+PM.%3C%2Fp%3E%3Cp%3E%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Fwsd%2Freservation%2FRSV-9901%5C%22%3EView+Reservation+Details%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Conference+Room+5B%22%7D%5D%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# Pre-requisites

Before installing and using the **Reserve Space** plugin, ensure that the following requirements are met:

## **1. ServiceNow's Workplace Reservation Management**

This plugin requires an active **Workplace Reservation Management** installation and configuration on your ServiceNow instance.

- If you have not installed and configure the application, follow the **[Install Workplace Reservation Management](https://www.servicenow.com/docs/r/employee-service-management/workplace-reservation-management/install-wsd-reservation-mgmt.html)** documentation
- The minimum version of the Workplace Reservation Management application is: 3.5.0
- After the app is configured, follow the **[plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation)** for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **2. User Identity Ingestion from ServiceNow**
This plugin operates on reservations under the requesting user's own ServiceNow identity. The `requested_for` fields are populated by dot-walking the user's profile in the Data Bank: `meta_info.user.external_system_identities.snow.external_id`

The `external_id` serves two purposes:
1. **Authentication & role verification** — the `external_id` is used to verify that the user has the required `sn_wsd_core.workplace_user` role in ServiceNow. Without this, API calls will fail regardless of authentication status.
2. **Reservation operations** — all reservation operations are scoped to the authenticated user's identity in ServiceNow.

This reads the user's ServiceNow `sys_id` from the identity source linked to their Moveworks profile, so your users must be ingested from ServiceNow for this value to populate. To set up user identity for your org, read our help docs on Identity Configuration in [**Moveworks Setup**](https://help.moveworks.com/service-management/moveworks-setup/identity-configuration).
>⚠️ **Important — update this mapping to match your setup**. The `snow` key in that path must exactly match the name of `your` ServiceNow identity source in Moveworks Setup. If yours is named differently (e.g. `servicenow_prod`), update the Compound Action mapping to `meta_info.user.external_system_identities.servicenow_prod.external_id`. If it doesn't match, the path resolves to null and both authentication and reservation operations will fail.


## **3. ServiceNow Connector**

This plugin requires an active **ServiceNow connector** configured with **OAuth 2.0 using the Authorization Code grant (user-based / User Consent auth)**.

- If you have not already configured the connector, follow the [**OAuth 2.0 Authorization Code guide**](https://docs.moveworks.com/agent-studio/connectors/http-connectors/oauth-20-authorization-code). The connector must be fully set up before installing this plugin.


### **4. Suggest Spaces Plugin**
This plugin requires the availability of the `Suggest Spaces` plugin on the instance. The Suggest Spaces plugin is used to search and suggest available spaces.


# Implementation details

**Note:** References to the instance must be updated after the plugin is installed.

## Visual representation of how the plugin works

![Conversation flow](Reserve%20Space/flow.png)

## API Details

Before running the cURL examples, replace `YOUR_INSTANCE` with your instance hostname and `ACCESS_TOKEN` with the OAuth access token issued for the user.

### **API 1: Look up the space by name**

This REST API is used to look up the space based on the provided information. If the employee provided a specific space, the id of the space is used.

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/sn_wsd_core_space?sysparm_fields=name%2Csys_id%2Cbuilding.name%2Cbuilding.sys_id%2Cbuilding.time_zone&sysparm_query=active%3Dtrue%5Eis_reservable%3Dtrue%5EnameLIKERedwood' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Accept: application/json'
```
**Body parameters**
- `search_term`: This is the space or level to search for an available space
- `filterConfig`: This is used to specify the level in the hierachy where the employees search for a space (`Campus`, `Building`, `Space`)
- `sysparam_limit`: This is the number of spaces returned that matches the `search_term`.

### **API 2: Create the reservation**

This REST API is used to create a reservation on the selected space.

```bash
curl --location --request POST 'https://<YOUR_INSTANCE>/api/sn_wsd_rsv/reservation/add' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --data '{
    "subject": "Reservation for Redwood Room",
    "location": "<SPACE_SYS_ID>",
    "start": "2026-07-13T21:00:00Z",
    "end": "2026-07-13T22:00:00Z",
    "opened_by": "<SERVICENOW_USER_SYS_ID>",
    "requested_for": "<SERVICENOW_USER_SYS_ID>",
    "timezone": "US/Pacific"
  }'
```

**Body parameter**
- `subject`: This is the subject of the reservation. Default value `Reservation for [space name]`.
- `location`: This is the sys_id of the location that will be reserved.
- `start`: This is the start date and time of the reservation in **UTC** `('yyyy-MM-dd HH:mm:ss' or ISO-8601 with a trailing 'Z'))`
- `end`: This is the end date and time of the reservation in **UTC** `('yyyy-MM-dd HH:mm:ss' or ISO-8601 with a trailing 'Z'))`
- `opened_by`: This is the sys_id of the employee that creates the reservation.
- `requested_for`: This is the sys_id of the employee that creates the reservation.
- `timezone`: This is the timezone the reservation is created in. The timezone depends on the building the space is in.


### API References

This plugin uses **Workplace Reservation Management REST APIs** to retrieve information.

For detailed information on request parameters, response formats, error handling, and versioning, refer to the **[official ServiceNow documentation](https://developer.servicenow.com/dev.do#!/reference/)**.


# **What Is In Scope for This Plugin?**

- Reserve a single space (workspace, meeting room, or hot desk) for a specific date and time range.
- Reserve a specific space by name.

# **What Is Out of Scope for This Plugin?**

- Reserve spaces using a recurring pattern.
- Reserve multiple spaces in a single reservation.
- Updating or cancelling a reservation requires the `Update Reservation` plugin.
- Creating a reservation on behalf of another colleague.