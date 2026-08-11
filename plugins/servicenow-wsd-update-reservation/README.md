---
availability: INSTALLABLE
name: Update Reservation
description: Lets employees change the date, time, duration, or location of an existing reservation in the ServiceNow WSD module instead of cancelling and booking again, via the Moveworks AI Assistant.
installation_asset_uuid: 0ec44d1c-1991-4968-9058-f1ce7434da96
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+change+my+room+reservation+for+the+%27Product+Sync%27+meeting.+Can+we+move+it+to+tomorrow+and+make+it+an+hour+longer%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+%27Product+Sync%27+reservation+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Modifying+reservation+RES-99281+to+tomorrow+with+a+%2B1+hour+extension...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+updated+your+%3Cb%3EProduct+Sync%3C%2Fb%3E+reservation+in+%3Cb%3EServiceNow%3C%2Fb%3E.+I+moved+the+date+to+tomorrow+and+extended+the+duration+to+2+hours.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ENew+Time%3A%3C%2Fb%3E+Tomorrow%2C+2%3A00+PM+%E2%80%93+4%3A00+PM%3C%2Fli%3E%3Cli%3E%3Cb%3ELocation%3A%3C%2Fb%3E+Conference+Room+A%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Freservations%2FRES-99281%5C%22%3EView+Updated+Reservation%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22RES-99281%3A+Product+Sync%22%7D%5D%7D%5D%7D%5D%7D
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

When priorities shift, a reservation often needs to move rather than disappear. Instead of cancelling and booking again, an employee can ask the Moveworks AI Assistant to change the date, time, duration, or location of an existing reservation in place. The booking updates to match the new plan — a later start, a longer block, a different space — without the employee giving up their reservation and starting from scratch.

# User Experience Preview

Refer to the [**Purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+change+my+room+reservation+for+the+%27Product+Sync%27+meeting.+Can+we+move+it+to+tomorrow+and+make+it+an+hour+longer%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+%27Product+Sync%27+reservation+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Modifying+reservation+RES-99281+to+tomorrow+with+a+%2B1+hour+extension...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+updated+your+%3Cb%3EProduct+Sync%3C%2Fb%3E+reservation+in+%3Cb%3EServiceNow%3C%2Fb%3E.+I+moved+the+date+to+tomorrow+and+extended+the+duration+to+2+hours.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ENew+Time%3A%3C%2Fb%3E+Tomorrow%2C+2%3A00+PM+%E2%80%93+4%3A00+PM%3C%2Fli%3E%3Cli%3E%3Cb%3ELocation%3A%3C%2Fb%3E+Conference+Room+A%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Freservations%2FRES-99281%5C%22%3EView+Updated+Reservation%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22RES-99281%3A+Product+Sync%22%7D%5D%7D%5D%7D%5D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# Pre-requisites

Before installing and using the **Update_Reservations** plugin, ensure that the following requirements are met:

## **1. ServiceNow's Workplace Reservation Management**

This plugin requires an active **Workplace Reservation Management** installation and configuration on your ServiceNow instance.

- If you have not installed and configure the application, follow the **[Install Workplace Reservation Management](https://www.servicenow.com/docs/r/employee-service-management/workplace-reservation-management/install-wsd-reservation-mgmt.html)** documentation
- The minimum version of the Workplace Reservation Management application is: 3.5.0
- After the app is configured, follow the **[plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation)** for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **2. User Identity Ingestion from ServiceNow**
This plugin operates on reservations under the requesting user's own ServiceNow identity. The `requested_for` fields are populated by dot-walking the user's profile in the Data Bank: `meta_info.user.external_system_identities.snow.external_id`

The `external_id` serves two purposes:
1. **Authentication & role verification** — the `external_id` is used to verify that the user has the required `sn_wsd_core.workplace_user`r role in ServiceNow. Without this, API calls will fail regardless of authentication status.
2. **Reservation operations** — all reservation operations are scoped to the authenticated user's identity in ServiceNow.

This reads the user's ServiceNow `sys_id` from the identity source linked to their Moveworks profile, so your users must be ingested from ServiceNow for this value to populate. To set up user identity for your org, read our help docs on Identity Configuration in [**Moveworks Setup**](https://help.moveworks.com/service-management/moveworks-setup/identity-configuration).
>⚠️ **Important — update this mapping to match your setup**. The `snow` key in that path must exactly match the name of `your` ServiceNow identity source in Moveworks Setup. If yours is named differently (e.g. `servicenow_prod`), update the Compound Action mapping to `meta_info.user.external_system_identities.servicenow_prod.external_id`. If it doesn't match, the path resolves to null and both authentication and reservation operations will fail.

## **3. ServiceNow Connector**

This plugin requires an active **ServiceNow connector** configured with **OAuth 2.0 using the Authorization Code grant (user-based / User Consent auth)**.

- If you have not already configured the connector, follow the [**OAuth 2.0 Authorization Code guide**](https://docs.moveworks.com/agent-studio/connectors/http-connectors/oauth-20-authorization-code). The connector must be fully set up before installing this plugin.

# Implementation details

**Note:** References to the instance must be updated after the plugin is installed.

## Visual representation of how the plugin works

![Conversation flow](Update%20Reservation/flow.png)

## API Details

Before running the cURL examples, replace `YOUR_INSTANCE` with your instance hostname and `ACCESS_TOKEN` with the OAuth access token issued for the user.


### **API: Update the reservation**

This REST API is used to update an existing reservation to a new date, time, duration, or different location.

```bash
curl --location --request PATCH 'https://<YOUR_INSTANCE>/api/sn_wsd_rsv/reservation/update/<RESERVATION_SYS_ID>' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --data '{
    "sys_id": "<RESERVATION_SYS_ID>",
    "subject": "Team Project Sync",
    "start": "2026-05-12T14:00:00Z",
    "end": "2026-05-12T15:00:00Z",
    "location": "<NEW_OR_CURRENT_LOCATION_SYS_ID>",
    "requested_for": "<SERVICENOW_USER_SYS_ID>"
  }'
```
**Body parameters**
- `sys_id`: This is the sys_id of the reservation which must be updated.
- `subject`: This is the updated subject of the reservation.
- `start`: This is the updated start date and time of the reservation in **UTC** `('yyyy-MM-dd HH:mm:ss' or ISO-8601 with a trailing 'Z'))`
- `end`: This is the end date and time of the reservation in **UTC** `('yyyy-MM-dd HH:mm:ss' or ISO-8601 with a trailing 'Z'))` 
- `location`: This is the sys_id of location. This can be the sys_id of the already selected location, or the new location.
- `requested_for`: This is the sys_id of the employee that creates this reservation.


### API References

This plugin uses **Workplace Reservation Management REST APIs** to retrieve information.

For detailed information on request parameters, response formats, error handling, and versioning, refer to the **[official ServiceNow documentation](https://developer.servicenow.com/dev.do#!/reference/)**.


# **What Is In Scope for This Plugin?**

- Update the `subject`, `start`, `end`, `location`, and/or `requested_for` of a single and active reservation.

# **What Is Out of Scope for This Plugin?**

- Creating a reservation requires the `Reserve Space` plugin.
- Updating reservations that are completed, inactive, or when edit restrictions are applied.
- Updating a reoccurring series, a reservation containing multiple locations, or a reservation which is part of a group.
- Changing the related reservable module based on the existing reservation.