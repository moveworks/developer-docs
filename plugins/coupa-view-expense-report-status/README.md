---
availability: INSTALLABLE
description: A plugin that allows a user to easily see a summary of their expense
  reports.
installation_asset_uuid: 22a929a6-9694-46c4-897e-abe0e35e97f5
name: Look Up My Expense Report Details
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+the+status+of+my+expense+reports%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+for+user%27s+expense+reports+in+Coupa%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+your+current+expense+report+statuses%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EExpense+Report%3A+Client+Meeting+in+New+York%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+%3Cb%3EApproved%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report%3A+Client+Meeting+in+New+York%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EExpense+Report%3A+Conference+Trip+to+San+Francisco%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+%3Cb%3EPending+Approval%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report%3A+Conference+Trip+to+San+Francisco%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EExpense+Report%3A+Team+Building+Activities%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+%3Cb%3EIncomplete%3C%2Fb%3E%3Cbr%3EPlease+complete+the+remaining+sections+to+proceed.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report%3A+Team+Building+Activities%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance - Other
systems:
- coupa
---

# Introduction

The Look Up My Expense Report Details plugin enables your users to effortlessly access and review the details of the expense reports (such as the title, amount, status, date of submission etc) they’ve raised in Coupa, directly through the Moveworks AI Assistant.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+the+status+of+my+expense+reports%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+for+user%27s+expense+reports+in+Coupa%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+your+current+expense+report+statuses%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EExpense+Report%3A+Client+Meeting+in+New+York%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+%3Cb%3EApproved%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report%3A+Client+Meeting+in+New+York%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EExpense+Report%3A+Conference+Trip+to+San+Francisco%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+%3Cb%3EPending+Approval%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report%3A+Conference+Trip+to+San+Francisco%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EExpense+Report%3A+Team+Building+Activities%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+%3Cb%3EIncomplete%3C%2Fb%3E%3Cbr%3EPlease+complete+the+remaining+sections+to+proceed.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report%3A+Team+Building+Activities%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Coupa first, prior to installing this plugin. Please follow the [Coupa Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=coupa) to create the connector. Note that for Look Up My Expense Report Details, you will also need to add the following permissions (the connector guide will walk you through how to add permissions):

- User » Standard role for all users who need to create and/or approve expense reports

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### **API #1: Get Expense Report by Email ID**

For building this plugin, we’ll be using Coupa’s REST APIs, specifically the [Expense Report API](https://compass.coupa.com/_dita_/en-us/documentation/plat/integ/coupa_core_api/topics/expense_reports_api.dita), which provides methods for accessing and manipulating Expense Reports. 

The API provides filtering options as well, which we will be using to extract meaningful data. It also allows us to prune the response body to make sure we get only the fields in the payload which are helpful to us. We’ll be using a GET call to fetch the details of the expense reports of a user. 

```bash
curl --request GET \
  --url 'https://your-domain.com/api/expense_reports' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
```

With the following example params:

- Key: expensed-by[email]
Value: example@email.com
- Key: fields
Value: ["id", "created-at", "updated-at", "title", "status", "type-of-expense", {"expense_lines":["description","approved-amount","amount"]}, "auditor-note", "total", "audit-score"]