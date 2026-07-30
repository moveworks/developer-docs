---
availability: INSTALLABLE
name: Check-in Reservation
description: Lets employees check in to a reserved desk or room in the ServiceNow WSD module and secure the space before it gets auto-released, via the Moveworks AI Assistant.
installation_asset_uuid: 1f2e7593-a621-421e-b240-dac3405bc2c3
purple_chat_link: [**Purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+here+for+my+reservation%2C+can+you+check+me+in%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+upcoming+room+reservations+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+two+upcoming+reservations+for+you.+Which+one+would+you+like+to+check+in+to%3F%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ECreative+Studio+A%3C%2Fb%3E+%28Starts+at+2%3A00+PM%29%3C%2Fli%3E%3Cli%3E%3Cb%3EPod+12%3C%2Fb%3E+%28Starts+at+2%3A30+PM%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Creative+Studio+A%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Checking+in+to+reservation+RSV-4491+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou%27ve+been+successfully+checked+in+to+%3Cb%3ECreative+Studio+A%3C%2Fb%3E.+Your+reservation+is+now+active.%3C%2Fp%3E%3Cp%3EView+the+reservation+details+here%3A+%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Fnav_to.do%3Furi%3Dx_room_reservation.do%3Fsys_id%3DRSV-4491%5C%22%3ERSV-4491%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22RSV-4491%3A+Creative+Studio+A%22%7D%5D%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D)
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

Reserving a space is only half the story — the other half is showing up. If an employee doesn't check in, the reservation can be released and the space freed up for someone else. The Moveworks AI Assistant closes that gap: the employee just asks, and the assistant surfaces the reservations waiting to be checked in and completes the check-in on the spot. No portal to open, no booking to hunt down — checking in confirms the employee has arrived and secures the space before it slips away.

# User Experience Preview

Refer to the [**Purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+here+for+my+reservation%2C+can+you+check+me+in%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+upcoming+room+reservations+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+two+upcoming+reservations+for+you.+Which+one+would+you+like+to+check+in+to%3F%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ECreative+Studio+A%3C%2Fb%3E+%28Starts+at+2%3A00+PM%29%3C%2Fli%3E%3Cli%3E%3Cb%3EPod+12%3C%2Fb%3E+%28Starts+at+2%3A30+PM%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Creative+Studio+A%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Checking+in+to+reservation+RSV-4491+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou%27ve+been+successfully+checked+in+to+%3Cb%3ECreative+Studio+A%3C%2Fb%3E.+Your+reservation+is+now+active.%3C%2Fp%3E%3Cp%3EView+the+reservation+details+here%3A+%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Fnav_to.do%3Furi%3Dx_room_reservation.do%3Fsys_id%3DRSV-4491%5C%22%3ERSV-4491%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22RSV-4491%3A+Creative+Studio+A%22%7D%5D%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# Pre-requisites

Before installing and using the **Check In Reservation** plugin, ensure that the following requirements are met:

## **1. ServiceNow's Workplace Reservation Management**

This plugin requires an active **Workplace Reservation Management** installation and configuration on your ServiceNow instance.

- If you have not installed and configured the application, follow the **[Install Workplace Reservation Management](https://www.servicenow.com/docs/r/employee-service-management/workplace-reservation-management/install-wsd-reservation-mgmt.html)** documentation
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

**Note:** References to the instance must be updated after the plugin is installed.

## Visual representation of how the plugin works

![Conversation flow](Check%20In%20Reservation/flow.png)

# Implementation Details

## API Details

### **API: Check In Reservation**

This REST API retrieves workplace reservations from the employee that are eligible for check-in, and checks in the required workplace reservations based on the intent.

```bash
curl --location --request POST 'https://<YOUR_INSTANCE>/api/sn_wsd_rsv/reservation/<RESERVATION_SYS_ID>/checkin' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{}'
```

**Path parameters**
- `RESERVATION_SYS_ID` *(string, required)*: **Sys_id of the reservation to check in**.

**Derived fields**
- `deeplink`: Concatenated link using the ServiceNow instance URL (`https://<YOUR_INSTANCE>/`) and ID of the reservation.

**Confirmation behavior**
- A fixed confirmation message — "✅ You're checked in." followed by a link to the reservation to view the details is displayed by the plugin.

### API References

This plugin uses **Workplace Reservation Management REST APIs** to retrieve information.

For detailed information on request parameters, response formats, error handling, and versioning, refer to the **[official ServiceNow documentation](https://developer.servicenow.com/dev.do#!/reference/)**.

# **What Is In Scope for This Plugin?**

- **Check in eligible reservations** within the check-in time window.

# **What Is Out of Scope for This Plugin?**

- Checking in on behalf of another employee.
- Checking out of a reservation once checked in, which is handled by the `Check Out Reservation` plugin.