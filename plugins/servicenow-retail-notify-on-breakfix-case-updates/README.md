---
availability: INSTALLABLE
name: Notify Requesters of Break-Fix Case Updates
description: Proactively keeps retail store employees informed as their break-fix case progresses — assignment, awaiting-info, and resolution updates delivered straight to the Moveworks AI Assistant, with one-tap accept or reject.
installation_asset_uuid: f2183302-8f5c-45ee-8df0-4d78a7f74e16
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EGood+news+%E2%80%94+your+case+has+a+proposed+resolution%3C%2Fstrong%3E%3Cbr+%2F%3ECase%3A+%3Cstrong%3ERBF0001106%3C%2Fstrong%3E%3Cbr+%2F%3EIssue%3A+Front+office+water+cooler+is+down%3Cbr+%2F%3E%3Cbr+%2F%3E%3Cstrong%3EProposed+solution%3C%2Fstrong%3E%3Cbr+%2F%3EPlease+restart+the+watercooler+and+check+if+it+is+working.%3Cbr+%2F%3E%3Cbr+%2F%3E%3Cstrong%3EResolution+type%3C%2Fstrong%3E%3Cbr+%2F%3ESolved+-+Information+provided%3Cbr+%2F%3E%3Cbr+%2F%3E%3Cstrong%3EResolved+by%3C%2Fstrong%3E%3Cbr+%2F%3EBen+Thomas%3C%2Fp%3E%3Cp%3E%3Cbr+%2F%3EPlease+review+the+resolution+above.%3Cbr+%2F%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3EIf+your+issue+is+fixed%2C+click+%3Cstrong%3EAccept+solution%3C%2Fstrong%3E+below+to+close+the+case.%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EIf+you%27re+still+experiencing+the+problem+and+want+to+reject+the+resolution%2C+reply+with+details+and+I+will+reopen+the+case.%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Accept+solution%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Reject+solution%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+water+cooler+is+still+leaking+after+the+restart.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Validating+case+state+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Reopening+case+and+posting+rejection+comments...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ECase+%3Cb%3ERBF0001106%3C%2Fb%3E+has+been+reopened+with+your+feedback.+HQ+will+review+and+follow+up+with+a+revised+resolution.%3C%2Fp%3E%3Cp%3E%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Fnav_to.do%3Furi%3Dcase.do%3Fsysparm_query%3Dnumber%3DRBF0001106%5C%22%3EView+case+in+ServiceNow%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22RBF0001106%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Support
- Facilities
- Retail Operations
- Retail Store Services
- RSM
- Store Operations
agent_capabilities:
- Ambient Agent
systems:
- servicenow
---

# Introduction

Retail store employees are kept in the loop as their break-fix case moves toward resolution — assignment, awaiting-info, and resolution updates delivered straight to the Moveworks AI Assistant, with no portal checks or help desk calls needed. When a fix is proposed, the employee can accept or reject it with a single tap right from the notification.

For store operations and facilities teams, the result is faster case closure, fewer stalled tickets waiting on a response, and store employees who never have to wonder where their issue stands.

# User Experience Preview

Please refer to the following [**Purple Chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EGood+news+%E2%80%94+your+case+has+a+proposed+resolution%3C%2Fstrong%3E%3Cbr+%2F%3ECase%3A+%3Cstrong%3ERBF0001106%3C%2Fstrong%3E%3Cbr+%2F%3EIssue%3A+Front+office+water+cooler+is+down%3Cbr+%2F%3E%3Cbr+%2F%3E%3Cstrong%3EProposed+solution%3C%2Fstrong%3E%3Cbr+%2F%3EPlease+restart+the+watercooler+and+check+if+it+is+working.%3Cbr+%2F%3E%3Cbr+%2F%3E%3Cstrong%3EResolution+type%3C%2Fstrong%3E%3Cbr+%2F%3ESolved+-+Information+provided%3Cbr+%2F%3E%3Cbr+%2F%3E%3Cstrong%3EResolved+by%3C%2Fstrong%3E%3Cbr+%2F%3EBen+Thomas%3C%2Fp%3E%3Cp%3E%3Cbr+%2F%3EPlease+review+the+resolution+above.%3Cbr+%2F%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3EIf+your+issue+is+fixed%2C+click+%3Cstrong%3EAccept+solution%3C%2Fstrong%3E+below+to+close+the+case.%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EIf+you%27re+still+experiencing+the+problem+and+want+to+reject+the+resolution%2C+reply+with+details+and+I+will+reopen+the+case.%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Accept+solution%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Reject+solution%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+water+cooler+is+still+leaking+after+the+restart.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Validating+case+state+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Reopening+case+and+posting+rejection+comments...%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ECase+%3Cb%3ERBF0001106%3C%2Fb%3E+has+been+reopened+with+your+feedback.+HQ+will+review+and+follow+up+with+a+revised+resolution.%3C%2Fp%3E%3Cp%3E%3Ca+href%3D%5C%22https%3A%2F%2Fservicenow.com%2Fnav_to.do%3Furi%3Dcase.do%3Fsysparm_query%3Dnumber%3DRBF0001106%5C%22%3EView+case+in+ServiceNow%3C%2Fa%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22RBF0001106%22%7D%5D%7D%5D%7D%5D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# Pre-requisites

Before installing and using the **Notify Requesters of Break-Fix Case Updates** plugin, please ensure the following requirements are met:

## **1. ServiceNow Retail Store Services Application**

This plugin reacts to lifecycle changes on the **Retail Store Services** break-fix case table (`sn_rtl_stre_servcs_bf_case`). The **Retail Store Services** application must be installed and active on your ServiceNow instance before installing this plugin.

Install it from the ServiceNow Store: [**Retail Store Services**](https://store.servicenow.com/store/app/f84516ce1b87e210c43e65b2604bcb7a)

## **2. ServiceNow Connector**

This plugin requires an active **ServiceNow connector** configured with **OAuth 2.0 Client Credentials (service account)**. Used to fetch the break-fix case details included in the notification payload. Set this up following the [**OAuth 2.0 Client Credentials guide**](https://marketplace.moveworks.com/connectors/servicenow#oauth-2-0-with-client-credentials).

The connector must be fully set up before installing this plugin.

Once configured, follow our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **3. Update Break-Fix Case Plugin**

When a store employee taps **Reject solution** or replies to an awaiting-info notification in chat, the flow hands off to the **Update Break-Fix Case** plugin to collect the mandatory reason before reopening the case. That plugin must be installed and active **before** installing this plugin.

If you have not already installed it, please follow the [**Update Break-Fix Case Plugin Guide**](https://marketplace.moveworks.com/plugins/servicenow-retail-update-breakfix-case-details#how-to-implement) available in the Moveworks Marketplace.

## **4. ServiceNow Webhook / Event Configuration**

This is an **ambient plugin** — instead of waiting for a user to start a conversation, it listens for events pushed from ServiceNow. The Business Rule that detects case assignment, awaiting-info, and resolution and sends the webhook is already part of the **Retail Store Services** application — you only need to point ServiceNow at Moveworks:

First, obtain the Moveworks webhook listener URL and API key from Moveworks.

**Step 1: Create a Basic Auth Credential**
1. Navigate to **Connections & Credentials > Credentials**.
2. Click **New**, then select **Basic Auth Credentials**.
3. Fill in:

   | Field | Value |
   |-------|-------|
   | Name | `Moveworks Webhook Credential` (or any descriptive name) |
   | User name | Leave empty, or use a placeholder like `api` |
   | Password | Paste the Moveworks API key here |
   | Active | `true` |

4. Save the record and note its `sys_id`.

**Step 2: Create an HTTP(s) Connection**
1. Navigate to **Connections & Credentials > Connections**.
2. Click **New** and fill in the following fields:

   | Field | Value |
   |-------|-------|
   | Name | `Moveworks Webhook (DEV)` (or any descriptive name) |
   | Credential | Select the Basic Auth credential created in Step 1 |
   | Connection alias | `sn_rtl_stre_servcs.moveworks_webhook` |
   | Connection URL | Paste your Moveworks webhook listener URL (e.g. `https://api.moveworks.ai/webhooks/v1/listeners/<your-listener-id>/notify`) |
   | Active | `true` |

3. Save the record.

Once both steps are done, ServiceNow will automatically notify the plugin whenever a break-fix case is assigned, moves to awaiting-info, or is resolved.

# **How This Plugin Works**

When a break-fix case is assigned, moves to awaiting-info, or gets resolved, the plugin sends the case requestor a chat notification with the relevant details — who it's assigned to, the fulfiller's question, or the proposed resolution. On a resolved case, the store employee can tap **Accept solution** to close the case, or **Reject solution** to reopen it with a reason. Replying in chat instead of tapping a button works the same way.

![image.png](Notify%20on%20Break-Fix%20Case%20Updates/image.png)

# **Implementation Details**

## API Details

The lifecycle notifications render directly via templates and require no outbound ServiceNow calls beyond the inbound webhook. The **Accept flow** makes one call under the authenticated user's own identity. Replace `YOUR_INSTANCE` with your instance hostname and `ACCESS_TOKEN` with the OAuth access token issued for the user.

### **API #1: Get the Case (Accept flow)**

Reads the case by number to validate its current state before closing. (Shared with the **Update Break-Fix Case** plugin.)

```bash
curl --location 'https://YOUR_INSTANCE/api/now/table/sn_rtl_stre_servcs_bf_case?sysparm_query=number=<CASE_NUMBER>&sysparm_display_value=true&sysparm_limit=1' \
  --header 'Authorization: Bearer ACCESS_TOKEN' \
  --header 'Accept: application/json'
```

### API References

For detailed information on request parameters, response formats, and error handling, refer to the official [**ServiceNow Table API**](https://docs.servicenow.com/bundle/latest-application-development/page/integrate/inbound-rest/concept/c_TableAPI.html) documentation.

# **Known Limitations**

This plugin only notifies on the event types your ServiceNow Business Rule actually sends — if the rule doesn't cover a transition or is disabled, no notification goes out for it. It also depends on the webhook payload including a valid `opened_by_email`; if that's missing or doesn't match a Moveworks user, the notification can't be delivered.

# **What Is In Scope for This Plugin?**

- Push notifications for three lifecycle events: case assigned, case awaiting info, and case resolved.
- One-tap **Accept solution** to close a resolved case directly from the notification.
- One-tap **Reject solution** that collects a reason from the store employee before reopening the case.
- Accept and reject via free-text chat reply, with the same outcome as tapping the buttons.

# **What Is Out of Scope for This Plugin?**

- Notifications for other case state changes (e.g. priority changes, group assignment).
- Notifying anyone other than the store employee who opened the case.
- Creating, looking up, or updating cases directly (handled by the sibling plugins).

# Related Plugins

| Plugin | What it does |
|--------|-------------|
| [Create Break-Fix Case](https://marketplace.moveworks.com/plugins/servicenow-retail-create-breakfix-case) | Open a new break-fix case for a broken in-store device directly from the Moveworks AI Assistant. |
| [Get Break-Fix Case Details](https://marketplace.moveworks.com/plugins/servicenow-retail-get-breakfix-case-details) | Look up the status, assignee, and details of an existing break-fix case by number or description. |
| [Update Break-Fix Case](https://marketplace.moveworks.com/plugins/servicenow-retail-update-breakfix-case-details) | Add comments, reopen, close, accept, or reject a resolution on an existing case. |
