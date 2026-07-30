---
availability: INSTALLABLE
name: Get Active Reservations
description: Lets employees see their active and planned workspace reservations in the ServiceNow WSD module and confirm where they are meant to be, without opening a portal, via the Moveworks AI Assistant.
installation_asset_uuid: d79b80ed-3c9a-4de3-bbc2-fda04c5d349a
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What+are+my+planned+space+reservations+for+tomorrow%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+all+active+reservations+scheduled+for+tomorrow...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+reservations+for+you+tomorrow%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3E9%3A00+AM%3C%2Fb%3E%3A+%3Ci%3EFocus+Time%3C%2Fi%3E+at+%3Cb%3EDesk+12%2C+Floor+2%3C%2Fb%3E+%E2%80%94+%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Freservation%2FRSV-8822%5C%22%3EView+Details%3C%2Fa%3E%3C%2Fli%3E%3Cli%3E%3Cb%3E11%3A30+AM%3C%2Fb%3E%3A+%3Ci%3EProduct+Sync%3C%2Fi%3E+at+%3Cb%3EMeeting+Room+4A%3C%2Fb%3E+%E2%80%94+%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Freservation%2FRSV-8821%5C%22%3EView+Details%3C%2Fa%3E%3C%2Fli%3E%3Cli%3E%3Cb%3E2%3A00+PM%3C%2Fb%3E%3A+%3Ci%3EDesign+Review%3C%2Fi%3E+at+%3Cb%3ECreative+Studio%3C%2Fb%3E+%E2%80%94+%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Freservation%2FRSV-8823%5C%22%3EView+Details%3C%2Fa%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Fwsd%2Fmy_reservations%5C%22%3EView+all+in+Workplace+Service+Delivery%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22My+Reservations%3A+Tomorrow%22%7D%5D%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D
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

Knowing what's booked shouldn't mean digging through a portal. An employee can ask the Moveworks AI Assistant for an overview of their reservations — active bookings for today or anything planned for a future day — and see it right away. It's a quick way to check where they're meant to be before the day starts, or confirm an upcoming booking without breaking stride.

# User Experience Preview

Refer to the [**Purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What+are+my+planned+space+reservations+for+tomorrow%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+all+active+reservations+scheduled+for+tomorrow...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+reservations+for+you+tomorrow%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3E9%3A00+AM%3C%2Fb%3E%3A+%3Ci%3EFocus+Time%3C%2Fi%3E+at+%3Cb%3EDesk+12%2C+Floor+2%3C%2Fb%3E+%E2%80%94+%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Freservation%2FRSV-8822%5C%22%3EView+Details%3C%2Fa%3E%3C%2Fli%3E%3Cli%3E%3Cb%3E11%3A30+AM%3C%2Fb%3E%3A+%3Ci%3EProduct+Sync%3C%2Fi%3E+at+%3Cb%3EMeeting+Room+4A%3C%2Fb%3E+%E2%80%94+%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Freservation%2FRSV-8821%5C%22%3EView+Details%3C%2Fa%3E%3C%2Fli%3E%3Cli%3E%3Cb%3E2%3A00+PM%3C%2Fb%3E%3A+%3Ci%3EDesign+Review%3C%2Fi%3E+at+%3Cb%3ECreative+Studio%3C%2Fb%3E+%E2%80%94+%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Freservation%2FRSV-8823%5C%22%3EView+Details%3C%2Fa%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Fwsd%2Fmy_reservations%5C%22%3EView+all+in+Workplace+Service+Delivery%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22My+Reservations%3A+Tomorrow%22%7D%5D%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# Pre-requisites

Before installing and using the **Get Active Reservations** plugin, ensure that the following requirements are met:

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

# Implementation details

**Notes:**
- References to the instance must be updated after the plugin is installed.
- Default page size is set to eight, and can be configured in the instance's system property.

## Visual representation of how the plugin works

![Conversation flow](Get%20Active%20Reservations/flow.png)

## API Details

### **API: Get Active Reservations**

This REST API retrieves planned workplace reservations that are created by the employee or on behalf of them.

```bash
curl --location 'https://<YOUR_INSTANCE>/api/sn_wsd_rsv/reservation/list?encodedQuery=active%3Dtrue' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Accept: application/json'
```

**Action-level parameters:**

- `encodedQuery` *(string, optional):* Appended after a fixed `active=true` via the action's Bender query template `active=true{{#encodedQuery}}^{{{encodedQuery}}}{{/encodedQuery}}` (e.g. `location.building.name=Building 1`).

**Derived fields**
- `friendly_display_start` / `friendly_display_end`: Format the date and time to a human-readable timezone, based on the building time zone specified in the building configuration on the ServiceNow Instance.
- `deeplink`: Concatenated link using the ServiceNow instance URL (`https://<YOUR_INSTANCE>/`) and ID of the reservation.

**Confirmation behavior**
- Show subject, location for each reservation, link to the reservation

### API References

This plugin uses **Workplace Reservation Management REST APIs** to retrieve information.

For detailed information on request parameters, response formats, error handling, and versioning, refer to the **[official ServiceNow documentation](https://developer.servicenow.com/dev.do#!/reference/)**.

# **What Is In Scope for This Plugin?**

- Retrieve all employee's active reservations, where they are the requester or the one who opened it.
- Answering a question about one specific active reservation.

# **What Is Out of Scope for This Plugin?**

- Displaying cancelled, completed, or otherwise inactive reservations.
- Reservations belonging to other users.
- Allow employees to search on subject or free text.