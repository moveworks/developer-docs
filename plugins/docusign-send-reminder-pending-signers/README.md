---
availability: IDEA
description: A plugin that allows the sender to send a reminder to all pending signers
  on an in-flight envelope, helping to reduce delays and accelerate agreement turnaround
  time.
domain:
- Legal
- HR - Recruiting & Talent
fidelity: GUIDE
name: Send a Reminder to Pending Signers
difficulty_level: INTERMEDIATE
time_in_minutes: 25
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+want+to+send+a+reminder+for+an+envelope+I+sent+on+Docusign%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOkay%2C+which+envelope+would+you+like+to+send+a+reminder+for%3F%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EFetching+your+in-flight+envelopes+from+%3Cb%3EDocuSign%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3ESOW+for+Project+Alpha+-+Pending%3A+Emily+White%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EMutual+NDA+-+Pending%3A+John+Doe%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EUpdated+Service+Agreement+-+Pending%3A+Michael+Johnson%2C+Sarah+Davis%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%221%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+will+send+a+reminder+for+%3Cstrong%3ESOW+for+Project+Alpha%3C%2Fstrong%3E+to+all+pending+signers.+Is+this+correct%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESending+reminder+for+envelope+%3Cb%3ESOW+for+Project+Alpha%3C%2Fb%3E+to+%3Ci%3EEmily+White%3C%2Fi%3E.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EDone.+A+reminder+has+been+sent+for+the+envelope+%27SOW+for+Project+Alpha%27.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22SOW+for+Project+Alpha%22%2C%22connectorName%22%3A%22docusign%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Recruiting & Talent
- Legal
systems:
- docusign

---
## **Introduction**

The **“Send a Reminder to Pending Signers”** plugin lets users quickly send reminders for DocuSign envelopes awaiting signatures. Through the Moveworks AI Assistant, users can see pending envelopes and remind signers, helping speed up document signing without manual follow-ups.

This guide will walk you through how to configure and customize the plugin within Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+want+to+send+a+reminder+for+an+envelope+I+sent+on+Docusign%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOkay%2C+which+envelope+would+you+like+to+send+a+reminder+for%3F%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EFetching+your+in-flight+envelopes+from+%3Cb%3EDocuSign%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3ESOW+for+Project+Alpha+-+Pending%3A+Emily+White%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EMutual+NDA+-+Pending%3A+John+Doe%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EUpdated+Service+Agreement+-+Pending%3A+Michael+Johnson%2C+Sarah+Davis%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%221%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+will+send+a+reminder+for+%3Cb%3ESOW+for+Project+Alpha%3C%2Fb%3E+to+all+pending+recipients.+Is+this+correct%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESending+reminder+for+envelope+%3Cb%3ESOW+for+Project+Alpha%3C%2Fb%3E+to+%3Ci%3EEmily+White%3C%2Fi%3E.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EDone.+A+reminder+has+been+sent+for+the+envelope+%27SOW+for+Project+Alpha%27.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22SOW+for+Project+Alpha%22%2C%22connectorName%22%3A%22docusign%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the DocuSign connector before installing this plugin. Please follow the [DocuSign Connector](https://marketplace.moveworks.com/connectors/docusign#how-to-implement) guide to set up the connector.
For this plugin, ensure the DocuSign system user has the following scopes:

- signature
- signature.read
- user_read

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

# **Customization Process**

### **Finding Your Organization ID**

In **DocuSign**, the `organization_id` is required for API calls to access user profiles. Follow these steps to locate it:

1. **Go to:** `Admin` → `Account Profile` → `Organization ID`
2. Copy the `Organization ID` to use in your API requests. 

## **Appendix**

### **API #1: Get User Profile by Email**

```bash
curl --request GET \
  --url 'https://<DOMAIN NAME (like api.docusign.net)>/Management/v2.1/organizations/<organization_id>/users/dsprofile?email={{email}}' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Path Parameters:**

- `organization_id` - The unique identifier of your DocuSign organization.

**Query Parameters:**

- `{{email}}` - Retrieves Account ID by email.

### **API #2: List Envelopes**

```bash
curl --request GET \
  --url 'https://<DOMAIN NAME (like demo.docusign.net)>/restapi/v2.1/accounts/{{account_id}}/envelopes?from_date={{from_date}}&to_date={{to_date}}&user_id={{user_id}}&status=sent,delivered&order=desc&order_by=created&include=recipients&count=50' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Path Parameters:**

- `{{account_id}}` – The ID of your DocuSign account.

**Query Parameters:**

- `{{from_date}}` – Start date to filter envelopes. Example: `2025-09-01T00:00:00Z`
- `{{to_date}}` – End date to filter envelopes. Example: `2025-09-22T23:59:59Z`
- `{{user_id}}` – The user ID to get envelopes of the user.

### **API #3: Send a Reminder to Pending Signers**

```bash
curl --request PUT \
  --url 'https://<DOMAIN_NAME (like demo.docusign.net)>/restapi/v2.1/accounts/{{account_id}}/envelopes/{{envelope_id}}/recipients?resend_envelope=true' \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
  --data '{
    "signers": [
      {
        "recipientId": "{{recipient_id}}",
        "name": "{{name}}",
        "email": "{{email}}"
      }
    ]
  }'
```

**Path Parameters:**

- `{{account_id}}` - The ID of your DocuSign account.
- `{{envelope_id}}` – The ID of the envelope you want to send a reminder for.

**Request Body Parameters:**

- `{{recipient_id}}`  - The unique ID of the recipient within the envelope.
- `{{name}}` – The full name of the recipient. Example: `John Doe`
- `{{email}}` – The recipient’s email address. Example: `john.doe@example.com`