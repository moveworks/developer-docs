---
availability: IDEA
description: A plugin that allows IT admins to quickly view the status and health
  of system connectors (e.g., Active Directory, Salesforce, Workday) within SailPoint
  iNow via the Moveworks AI Assistant. This automation helps identify sync or connectivity
  issues proactively without manual dashboard checks.
domain:
- IT
- Access Management
fidelity: GUIDE
name: Summarize System Connector Health
difficulty_level: INTERMEDIATE
time_in_minutes: 15
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+check+connector+health+for+our+Salesforce+instance%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Parsing+user+input+to+extract+system+name+%27Salesforce%27.+Searching+for+matching+SailPoint+iNow+connectors.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+connectors+related+to+%27Salesforce%27.+Which+one+would+you+like+to+check%3F%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ESalesforce+Prod+Connector%3C%2Fb%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ESalesforce+Sandbox+Connector%3C%2Fb%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Prod%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Verifying+user+authorization+for+SailPoint+iNow+connector+details.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+details+for+%27Salesforce+Prod+Connector%27+from+SailPoint+iNow%2C+including+name%2C+type%2C+status%2C+last+sync+time%2C+accounts+synced%2C+and+last+error+message.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Generating+a+human-readable+health+summary+for+%27Salesforce+Prod+Connector%27+using+the+LLM.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOkay%2C+you+selected+the+%3Cb%3ESalesforce+Prod+Connector%3C%2Fb%3E.+Here%27s+a+summary+of+its+health%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EOverall+Health+Status%3C%2Fb%3E%3A+Healthy%3C%2Fli%3E%3Cli%3E%3Cb%3ELast+Sync+Time%3C%2Fb%3E%3A+2024-07-26+10%3A30+AM+UTC%3C%2Fli%3E%3Cli%3E%3Cb%3EAccounts+Synced%3C%2Fb%3E%3A+5%2C231+accounts+%2899.8%25+success+rate+in+last+24h%29%3C%2Fli%3E%3Cli%3E%3Cb%3EConnector+Type%2FSystem+Name%3C%2Fb%3E%3A+Salesforce+Production+CRM%3C%2Fli%3E%3Cli%3E%3Cb%3ELast+Error%3C%2Fb%3E%3A+None%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sailpoint-inow%22%2C%22citationTitle%22%3A%22Salesforce+Prod+Connector+Health+Summary%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- sailpoint-inow

---
## Introduction

The **“Summarize System Connector Health”** plugin empowers IT administrators to efficiently monitor the operational status and health of system connectors across SailPoint IdentityNow. By aggregating real-time connector metrics such as status, synchronization activity, and error states, this plugin enables the Moveworks AI Assistant to proactively identify potential sync or connectivity issues before they impact identity processes.

This guide will walk you through installing and configuring the plugin in **Agent Studio**, helping you streamline connector monitoring and maintaining a healthy identity infrastructure with minimal manual effort.

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+check+connector+health+for+our+Salesforce+instance%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Parsing+user+input+to+extract+system+name+%27Salesforce%27.+Searching+for+matching+SailPoint+iNow+connectors.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+connectors+related+to+%27Salesforce%27.+Which+one+would+you+like+to+check%3F%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ESalesforce+Prod+Connector%3C%2Fb%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ESalesforce+Sandbox+Connector%3C%2Fb%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Prod%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Verifying+user+authorization+for+SailPoint+iNow+connector+details.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+details+for+%27Salesforce+Prod+Connector%27+from+SailPoint+iNow%2C+including+name%2C+type%2C+status%2C+last+sync+time%2C+accounts+synced%2C+and+last+error+message.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Generating+a+human-readable+health+summary+for+%27Salesforce+Prod+Connector%27+using+the+LLM.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOkay%2C+you+selected+the+%3Cb%3ESalesforce+Prod+Connector%3C%2Fb%3E.+Here%27s+a+summary+of+its+health%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EOverall+Health+Status%3C%2Fb%3E%3A+Healthy%3C%2Fli%3E%3Cli%3E%3Cb%3ELast+Sync+Time%3C%2Fb%3E%3A+2024-07-26+10%3A30+AM+UTC%3C%2Fli%3E%3Cli%3E%3Cb%3EAccounts+Synced%3C%2Fb%3E%3A+5%2C231+accounts+%2899.8%25+success+rate+in+last+24h%29%3C%2Fli%3E%3Cli%3E%3Cb%3EConnector+Type%2FSystem+Name%3C%2Fb%3E%3A+Salesforce+Production+CRM%3C%2Fli%3E%3Cli%3E%3Cb%3ELast+Error%3C%2Fb%3E%3A+None%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sailpoint-inow%22%2C%22citationTitle%22%3A%22Salesforce+Prod+Connector+Health+Summary%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**SailPoint iNow Connector Guide**](https://marketplace.moveworks.com/connectors/sailpoint-inow#how-to-implement) for detailed instructions (setup the connector for **User Consent Authentication** - Oauth 2.0 with Authorization Code Grant). 

As an admin, ensure that the following scopes are enabled for your user to successfully install and use this plugin.

**Required Scopes:**

- ****`idn:sources:read`

**Note:** This plugin requires User Consent Authentication (Oauth 2.0 with Authorization Code Grant). These scopes allow the plugin to read user activity and application details, so ensure the connector has only these scopes to minimize security risks.

**Your Instance Configuration:**

All Sailpoint iNow API endpoints in this plugin use `{{YOUR_INSTANCE}}` as a placeholder. After installation, replace `{{YOUR_INSTANCE}}` in the action definitions with your actual Sailpoint iNow instance name.

To find your instance name:

- Log in to your Sailpoint iNow account.
- Check the URL in your browser — the instance name appears before `.identitynow.com`

e.g.: `https://your_instance.identitynow.com/...`

Make sure to update this across all actions that reference the Sailpoint iNow API.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### API #1: Get Source Details by Connector Name (Partial Search)

```bash
curl --location 'https://<YOUR_INSTANCE>/v2025/sources?filters=connectorName sw "{{connector}}"&sort=created desc' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

### **Query Parameters**

- `connector` **: (string)** – Used to partially match the **connector name** of a source in SailPoint IdentityNow.
- `sort` **: (string)** – Specifies the sorting order of results. Use `created desc` to return the most recently created sources first.
