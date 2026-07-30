---
availability: INSTALLABLE
name: Suggest Spaces
description: Lets employees describe the space they need and get an available match from the ServiceNow WSD module, ready to reserve in one more step, via the Moveworks AI Assistant.
installation_asset_uuid: b84a2e11-b1f8-4319-b07e-6c253fa93889
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+a+quiet+workspace+in+the+%3Cb%3ESan+Francisco%3C%2Fb%3E+office+for+two+hours+starting+at+2%3A00+PM+today.+I%27d+prefer+a+standing+desk+if+available.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearching+%3Cb%3EServiceNow%3C%2Fb%3E+for+available+focus+pods+in+San+Francisco+with+standing+desks...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EFiltering+results+based+on+your+previous+preference+for+rooms+on+higher+floors.%3C%2Fp%3E%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+found+a+space+that+matches+your+needs+and+aligns+with+your+preference+for+rooms+on+the+20th+floor+or+above%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cstrong%3ESpace%3A%3C%2Fstrong%3E+Skyview+Pod+4%3C%2Fli%3E%3Cli%3E%3Cstrong%3ELocation%3A%3C%2Fstrong%3E+SF+Office%2C+Floor+22%3C%2Fli%3E%3Cli%3E%3Cstrong%3EFeatures%3A%3C%2Fstrong%3E+Standing+desk%2C+Dual+monitors%2C+Noise-canceling+glass%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EThere+are+%3Cb%3E8+other+spaces%3C%2Fb%3E+available+that+meet+your+criteria%2C+but+this+is+your+best+match.+%3Ca+href%3D%5C%22https%3A%2F%2Fexample.service-now.com%2Fnav_to.do%3Furi%3Dx_room_record_999%5C%22%3EView+Space+Details%3C%2Fa%3E%3C%2Fp%3E%3Cp%3EWould+you+like+me+to+reserve+this+for+you+from+2%3A00+PM+to+4%3A00+PM%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Skyview+Pod+4%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Reserve+Skyview+Pod+4%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22See+Other+Options%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D
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

Finding the right space shouldn't mean scrolling through everything that's free. An employee describes what they need — the kind of space, where, and any criteria that matter — and the Moveworks AI Assistant looks up a match that fits the request. It surfaces a suitable, available option so the employee doesn't have to weigh every choice themselves. From there, reserving it is a single step away.

# User Experience Preview

Refer to the [**Purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+a+quiet+workspace+in+the+%3Cb%3ESan+Francisco%3C%2Fb%3E+office+for+two+hours+starting+at+2%3A00+PM+today.+I%27d+prefer+a+standing+desk+if+available.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearching+%3Cb%3EServiceNow%3C%2Fb%3E+for+available+focus+pods+in+San+Francisco+with+standing+desks...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EFiltering+results+based+on+your+previous+preference+for+rooms+on+higher+floors.%3C%2Fp%3E%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+found+a+space+that+matches+your+needs+and+aligns+with+your+preference+for+rooms+on+the+20th+floor+or+above%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cstrong%3ESpace%3A%3C%2Fstrong%3E+Skyview+Pod+4%3C%2Fli%3E%3Cli%3E%3Cstrong%3ELocation%3A%3C%2Fstrong%3E+SF+Office%2C+Floor+22%3C%2Fli%3E%3Cli%3E%3Cstrong%3EFeatures%3A%3C%2Fstrong%3E+Standing+desk%2C+Dual+monitors%2C+Noise-canceling+glass%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EThere+are+%3Cb%3E8+other+spaces%3C%2Fb%3E+available+that+meet+your+criteria%2C+but+this+is+your+best+match.+%3Ca+href%3D%5C%22https%3A%2F%2Fexample.service-now.com%2Fnav_to.do%3Furi%3Dx_room_record_999%5C%22%3EView+Space+Details%3C%2Fa%3E%3C%2Fp%3E%3Cp%3EWould+you+like+me+to+reserve+this+for+you+from+2%3A00+PM+to+4%3A00+PM%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Skyview+Pod+4%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Reserve+Skyview+Pod+4%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22See+Other+Options%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.


# Pre-requisites

Before installing and using the **Suggest Spaces** plugin, ensure that the following requirements are met:

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

### **3. Reserve Space Plugin**
This plugin requires the availability of the `Reserve Space` plugin on the instance. The Reserve Space plugin is used to create the suggested available spaces.

# Implementation details

**Note:** References to the instance must be updated after the plugin is installed. 

## Visual representation of how the plugin works

![Conversation flow](Suggest%20Spaces/flow.png)


## API Details

Before running the cURL examples, replace `<YOUR_INSTANCE>` with your instance hostname and `<ACCESS_TOKEN>` with the OAuth access token issued for the user.

### **API: Fetch user context**

This REST API is used to retrieve information and behavior related to the employee, used while searching for available spaces.

```bash
curl --location 'https://<YOUR_INSTANCE>/api/sn_wsd_rsv/v1/user/context' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Accept: application/json'
```
**Query Parameters**
- `past_reservations_months` (optional): This is the lookback window, default value 3.
- `future_reservations_months` (optional): This is the lookahead window, default value 3.

**Notes**
- Information is retrieved based on the location assigned on the workplace profile.
- If Workplace Concierge is installed, the employees Presence Routine is retrieved.
- Past and active future reservations are retrieved.

### **API: Resolve a named location**

This API resolves the space id in case the employee searches for a specific space name.

```bash
curl --location --request POST 'https://<YOUR_INSTANCE>/api/sn_wsd_core/wsd_unified_search/users_and_locations' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --data '{
    "search_term": "Building 1",
    "filterConfig": {"sn_wsd_core_building": "parent.nameLIKECalifornia Campus"},
    "options": {},
    "sysparam_offset": 0,
    "sysparam_limit": 25
  }'
```

**Body parameters**
- `search_term`: This is the space or level to search for an available space
- `filterConfig`: This is used to specify the level in the hierarchy where the employees search for a space (`Campus`, `Building`, `Space`)
- `sysparam_limit`: This is the number of spaces returned that matches the `search_term`.

### **API: Search for available spaces**

This REST API searches for available spaces based on the resolved location name and using the provided context. A single available space is returned. 

```bash
curl --location 'https://<YOUR_INSTANCE>/api/sn_wsd_rsv/v1/search/available_spaces?building_id=<BUILDING_SYS_ID>&start_date_time=2026-05-30T16%3A00%3A00Z&end_date_time=2026-05-30T17%3A00%3A00Z&capacity=1' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Accept: application/json'
```
**Body parameters**
- `building_id`: This is the sys_id of the building to search for an available space
- `start_date_time`: This is the start date and time that the space must be available, in **UTC** `('yyyy-MM-dd HH:mm:ss' or ISO-8601 with a trailing 'Z'))`
- `end_date_time`: This is the end date and time that the space must be available, in **UTC** `('yyyy-MM-dd HH:mm:ss' or ISO-8601 with a trailing 'Z'))`
- `capacity`*(Optional)*: This is the minimum capacity needed in the space
- `space_type_id`*(Optional)*: This is the sys_id of the space_type

**Notes**
- Employees can provide a `Start date`. If no date is provided, the current date is used from the plugin.
- Employees can provide a `Start time`. If no time is provided, the current time is used from the plugin.
- Employees can provide a `End date`. If no date is provided, the current date is used from the plugin.
- Employees can provide a `End time`. If a start time is provided but not an end time, the start time plus 1 hour is used from the plugin.
- If the employee does not provide a start or end time, the start time is set to 9am and the end time to 5pm from the plugin.
- Employees must provide a `Building`, `Campus`, or `Floor`. If no value is provided, the system tries to derive the `Building` from the employee's Workplace Profile or Presence Exceptions (if available) from the plugin. The employee is asked if nothing is provided or could be derived.
- Employees can provide a neighborhood name as an optional value.
- Employees can provide a minimum capacity of the space. If no value is provided, a default value of 1 is used from the plugin.
- Employees can provide a space type (desk, room, hot desk).

### API References

This plugin uses **Workplace Reservation Management REST APIs** to retrieve information.

For detailed information on request parameters, response formats, error handling, and versioning, refer to the **[official ServiceNow documentation](https://developer.servicenow.com/dev.do#!/reference/)**.


# **What Is In Scope for This Plugin?**

- Suggesting a space based on the provided input.
- Infer building based on the employees context.
- Return the number of available spaces matching the search.

# **What Is Out of Scope for This Plugin?**

- Creating a reservation requires the `Reserve Space` plugin.
- Updating and cancelling a reservation requires the `Update Reservation` and `Cancel Reservation` plugin.