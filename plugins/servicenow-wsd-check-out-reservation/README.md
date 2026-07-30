---
availability: INSTALLABLE
name: Check-Out Reservation
description: Lets employees check out of a space in the ServiceNow WSD module when they finish early and release it for the next person, via the Moveworks AI Assistant.
installation_asset_uuid: 528e2edd-9797-47bf-98de-9e20eb804f42
purple_chat_link: [**Purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+finished+with+my+meeting+early%2C+can+I+check+out+of+my+room%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+active+room+reservations+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+two+active+reservations+for+you.+Which+one+would+you+like+to+check+out+of%3F%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EConference+Room+A%3C%2Fb%3E+%28Scheduled+until+4%3A00+PM%29%3C%2Fli%3E%3Cli%3E%3Cb%3EFocus+Pod+3%3C%2Fb%3E+%28Scheduled+until+5%3A30+PM%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Conference+Room+A%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Updating+reservation+end+time+and+status+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou%27ve+been+checked+out+of+%3Cb%3EConference+Room+A%3C%2Fb%3E.+I%27ve+updated+the+reservation+end+time+to+now+so+the+space+is+available+for+others.%3C%2Fp%3E%3Cp%3EView+the+updated+record+here%3A+%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Fnav_to.do%3Furi%3Dx_room_reservation.do%3Fsys_id%3DRSV-9982%5C%22%3ERSV-9982%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22RSV-9982%3A+Conference+Room+A%22%7D%5D%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D)
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

Finishing early shouldn't leave a space blocked for the rest of the booking. When an employee is done, they ask the Moveworks AI Assistant to check out — signalling they've finished and completing the reservation. If they check out before their scheduled end time, the reservation's end time updates to match, so the space isn't held longer than it's actually used and becomes available for the next employee right away. No portal, no waiting for the booking to run its course.

# User Experience Preview

Refer to the [**Purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+finished+with+my+meeting+early%2C+can+I+check+out+of+my+room%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+active+room+reservations+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+two+active+reservations+for+you.+Which+one+would+you+like+to+check+out+of%3F%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EConference+Room+A%3C%2Fb%3E+%28Scheduled+until+4%3A00+PM%29%3C%2Fli%3E%3Cli%3E%3Cb%3EFocus+Pod+3%3C%2Fb%3E+%28Scheduled+until+5%3A30+PM%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Conference+Room+A%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Updating+reservation+end+time+and+status+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou%27ve+been+checked+out+of+%3Cb%3EConference+Room+A%3C%2Fb%3E.+I%27ve+updated+the+reservation+end+time+to+now+so+the+space+is+available+for+others.%3C%2Fp%3E%3Cp%3EView+the+updated+record+here%3A+%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Fnav_to.do%3Furi%3Dx_room_reservation.do%3Fsys_id%3DRSV-9982%5C%22%3ERSV-9982%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22RSV-9982%3A+Conference+Room+A%22%7D%5D%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# Pre-requisites

Before installing and using the **Check Out Reservation** plugin, ensure that the following requirements are met:

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

![Conversation flow](Check%20Out%20Reservation/flow.png)

# Implementation Details

## API Details

### **API: Check Out Reservation**

This REST API retrieves employee workplace reservations that can be checked out, and checks out the required workplace reservations based on the intent.

```bash
curl --location --request POST 'https://<YOUR_INSTANCE>/api/sn_wsd_rsv/reservation/<RESERVATION_SYS_ID>/checkout' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{}'
```

**Action-level parameters**
- `RESERVATION_SYS_ID` *(string, required):* **Sys_id of the reservation to check out**.

**Derived fields**
- `deeplink`: Concatenated link using the ServiceNow instance URL (`https://<YOUR_INSTANCE>/`) and ID of the reservation.

**Confirmation behavior**
- A fixed confirmation message — "✅ You're checked out." followed by a link to the reservation to view the details is displayed by the plugin.


### API References

This plugin uses **Workplace Reservation Management REST APIs** to retrieve information.

For detailed information on request parameters, response formats, error handling, and versioning, refer to the **[official ServiceNow documentation](https://developer.servicenow.com/dev.do#!/reference/)**.


# **What Is In Scope for This Plugin?**

- **Check out eligible reservations** after they are checked in.
- Update the end time of the reservation if it is checked out before the original end time.

# **What Is Out of Scope for This Plugin?**

- Reservations that are not eligible for check-out.
- Checking in of a reservation, which is handled by the `Check In Reservation` plugin.