---
availability: INSTALLABLE
name: Cancel Reservation
description: Lets employees cancel an upcoming or in-progress workspace reservation in the ServiceNow WSD module and free the space for someone else in seconds, via the Moveworks AI Assistant.
installation_asset_uuid: 181e76b9-903e-490f-a304-a9b03338234c
purple_chat_link: [**Purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+cancel+my+space+reservation+for+5pm+today.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+matching+reservations+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+your+reservation+for+%3Cb%3EDesign+Lab+B%3C%2Fb%3E+at+5%3A00+PM+today.+I%27m+proceeding+with+the+cancellation+now+as+requested.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Updating+reservation+status+to+%27Cancelled%27+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22Your+reservation+for+%3Cb%3EDesign+Lab+B%3C%2Fb%3E+%28RSV-10293%29+has+been+successfully+cancelled.+The+room+is+now+available+for+others+to+book.+%3Cp%3EYou+can+view+the+updated+record+here%3A+%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Fnav_to.do%3Furi%3Dx_room_res.do%3Fsys_id%3DRSV-10293%5C%22%3ERSV-10293%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22RSV-10293%3A+Design+Lab+B%22%7D%5D%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D)
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

Plans change — and a reservation that no longer fits shouldn't be a chore to undo. When an employee's schedule shifts, they simply ask the Moveworks AI Assistant to cancel any upcoming or planned reservation. No My Reservations portal, no menus, no switching tools mid-task. The assistant handles it on the spot, and the space is freed for someone else in seconds.

# User Experience Preview

Refer to the [**Purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+cancel+my+space+reservation+for+5pm+today.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+matching+reservations+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+your+reservation+for+%3Cb%3EDesign+Lab+B%3C%2Fb%3E+at+5%3A00+PM+today.+I%27m+proceeding+with+the+cancellation+now+as+requested.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Updating+reservation+status+to+%27Cancelled%27+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22Your+reservation+for+%3Cb%3EDesign+Lab+B%3C%2Fb%3E+%28RSV-10293%29+has+been+successfully+cancelled.+The+room+is+now+available+for+others+to+book.+%3Cp%3EYou+can+view+the+updated+record+here%3A+%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Fnav_to.do%3Furi%3Dx_room_res.do%3Fsys_id%3DRSV-10293%5C%22%3ERSV-10293%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22RSV-10293%3A+Design+Lab+B%22%7D%5D%7D%5D%7D%5D%2C%22assistantConfig%22%3A%7B%22userName%22%3A%22Moveworks%22%2C%22initials%22%3A%22U%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# Pre-requisites

Before installing and using the **Cancel Reservation** plugin, ensure that the following requirements are met:

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

![Conversation flow](Cancel%20Reservation/flow.svg)

# **Implementation Details**

## API Details

Before running the cURL examples, replace `<YOUR_INSTANCE>` with your instance hostname and `<ACCESS_TOKEN>` with the OAuth access token issued for the user.

### **API: Cancel Reservation**
This REST API is used to cancel **Workplace reservations**.

```bash
curl --location --request PATCH 'https://<YOUR_INSTANCE>/api/sn_wsd_rsv/reservation/cancel/<RESERVATION_SYS_ID>' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --data '{
    "cancel_notes": "Meeting rescheduled"
  }'
```

**Path parameter:**

- `RESERVATION_SYS_ID` *(string, required):* sys_id of the reservation to cancel, resolved from the process's `target_reservation` slot.

**Body parameter:**

- `cancel_notes` *(string, optional):* free-text reason for the cancellation. The process always attempts to infer this from the user's message (`inference_type: ALWAYS_INFER`); if none is given, it falls back to the literal string `"Cancelled via Moveworks"` before the action is even called.

**Confirmation behavior:**
- The plugin does not ask the user to confirm before cancelling. `needs_confirmation` is explicitly `false` on both the action step and the final response-text step in the live process configuration.
- The final response-text step instructs the model to state "the total number of reservations cancelled" and lists the cancelled reservations.

### API References

This plugin uses **Workplace Reservation Management REST APIs** to retrieve information.

For detailed information on request parameters, response formats, error handling, and versioning, refer to the **[official ServiceNow documentation](https://developer.servicenow.com/dev.do#!/reference/api/australia/rest/wsd_reservation-api#wsd_reserv-PATCH-cancel)**.


# **What Is In Scope for This Plugin?**

- Cancelling a single active space reservation identified by date, time, location, or reservation number.
- Include an optional free-text cancellation reason, defaulting to "Cancelled via Moveworks" if not provided.

# **What Is Out of Scope for This Plugin?**

- Cancelling a reservation that is already inactive, already checked in, or that the employee doesn't have access to.
- Any confirmation step before cancelling — the live process has no confirmation gate configured.