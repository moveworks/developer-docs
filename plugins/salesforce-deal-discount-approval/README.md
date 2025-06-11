---
description: A plugin that facilitates the review and authorization of deal discounts,
  ensuring pricing strategies are cleared while keeping business objectives in mind.
fidelity: GUIDE
name: Approve / Reject Deal Discounts
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A2344%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EThere+is+a+requested+discount+for+the+Orion+project.+Do+you+wish+to+approve+it%3F+%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Deal%3A+Orion+Project%22%2C%22text%22%3A%22%3Cb%3ECustomer%3A%3C%2Fb%3E+Global+Tech+Solutions%3Cbr%3E%3Cb%3EOriginal+Price%3A%3C%2Fb%3E+%24100%2C000%3Cbr%3E%3Cb%3EProposed+Discount%3A%3C%2Fb%3E+15%25%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Authorize+Discount%22%7D%2C%7B%22text%22%3A%22Request+Revision%22%7D%2C%7B%22text%22%3A%22Decline%22%7D%5D%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Authorize+Discount%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22The+discount+for+the+Orion+project+has+been+successfully+authorized.%22%7D%5D%7D%7D%5D%7D
solution_tags:
- Approvals
- Sales
systems:
- salesforce

---

# Approve / Reject Deal Discounts

## Introduction

The “Approve / Reject Deal Discounts” plugin enables approvers to review and authorize discount requests directly through the Moveworks AI Assistant, eliminating the need to navigate Salesforce manually. This streamlines the approval process, ensures compliance with pricing strategies, and supports business objectives with minimal effort.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## Prerequisites

- Access to **Agent Studio**

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A2344%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EThere+is+a+requested+discount+for+the+Orion+project.+Do+you+wish+to+approve+it%3F+%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Deal%3A+Orion+Project%22%2C%22text%22%3A%22%3Cb%3ECustomer%3A%3C%2Fb%3E+Global+Tech+Solutions%3Cbr%3E%3Cb%3EOriginal+Price%3A%3C%2Fb%3E+%24100%2C000%3Cbr%3E%3Cb%3EProposed+Discount%3A%3C%2Fb%3E+15%25%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Authorize+Discount%22%7D%2C%7B%22text%22%3A%22Request+Revision%22%7D%2C%7B%22text%22%3A%22Decline%22%7D%5D%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Authorize+Discount%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22The+discount+for+the+Orion+project+has+been+successfully+authorized.%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

We recommend creating the connector for **Salesforce** first, prior to installing this plugin. Please follow the [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home) guide to set up the connector.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix**

### API #1 : Get Pending Deal Discount Approvals

```bash
curl --location 'https://<API_SERVER_DOMAIN>/services/data/v62.0/query?q=SELECT+Id%2CName%2CQuoteNumber%2CTotalPrice%2CDiscount%2CStatus%2CAccount.Name%2CAccountId+FROM+Quote+WHERE+Discount+%3E+0+AND+Status+NOT+IN+%28%27Accepted%27%2C+%27Approved%27%2C+%27Denied%27%29' \
--header 'Authorization: Bearer <Your_Access_Token>'
--header 'Content-Type: application/json' \
```

### API #2 : Get Deals By Quote Name

```bash
curl --location 'https://<API_SERVER_DOMAIN>/services/data/v62.0/query/?q=SELECT+Id%2CName%2CQuoteNumber%2CTotalPrice%2CDiscount%2CStatus%2CAccount.Name%2CAccountId+FROM+Quote+WHERE+Discount+%3E+0+AND+Status+NOT+IN+(%27Accepted%27%2C%27Approved%27%2C%27Denied%27)+AND+Name+%3D%27<QUOTE_NAME>%27' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

```

**Query Parameters:**

- `QUOTE_NAME` (string) – The Salesforce Quote Name used to filter particular Quote.

### API #3 : Update Approve Or Reject Deal Discount

```bash
curl --location --request PATCH 'https://<API_SERVER_DOMAIN>/services/data/v62.0/sobjects/Quote/<QUOTE_ID>' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <YOUR_ACESS_TOKEN>' \
--data '{
    "Status": "{{Status}}"
}'
```

**Path Parameters:**

- `QUOTE_ID` (string) – The Salesforce Quote Id used to filter particular Quote to Update Status for Approve or Reject.

**Request Body Field:**

- `Status` (string) – Update the Status of the Quote.
