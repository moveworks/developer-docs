---
accreditations:
- indrapaul24
- DEFAULT
availability: INSTALLABLE
description: A plugin that allows employees to access and review their own expense
  reports and relative statuses.
design_pattern_id: 28
difficulty_level: BEGINNER
domain:
- Approvals
- Finance
drop_accreditations:
- ajaymerchia
fidelity: TEMPLATE
installation_asset_uuid: c828f6ed-53d5-4be6-b1d3-e3114f81a467
name: Look up Expense Reports
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+my+expense+reports%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Running+Creator+Studio+plugin+to+retrieve+Expense+Reports+from+Concur%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22You+have+two+expense+reports%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ENew+test+report%3C%2Fb%3E%3Cbr%3ESubmitted+%26+Pending+Approval%3Cbr%3E%3Cb%3ETotal+Claimed+Amount%3A%3C%2Fb%3E+%2460.00%3Cbr%3EStatus%3A+%3Ci%3ECurrently+not+paid%3C%2Fi%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+in+SAP+Concur%22%2C%22connectorName%22%3A%22sap-concur%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EInternet+Reimbursement%3C%2Fb%3E%3Cbr%3ENot+submitted%3Cbr%3E%3Cb%3ETotal+Claimed+Amount%3A%3C%2Fb%3E+%2425.00%3Cbr%3EStatus%3A+%3Ci%3ENot+paid%3C%2Fi%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+in+SAP+Concur%22%2C%22connectorName%22%3A%22sap-concur%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
redirects:
- concur-expense-report-lookup
solution_tags:
- Approvals
- Finance
systems:
- sap-concur
time_in_minutes: 15
---

# Introduction

SAP Concur is a widely used platform for managing travel and expense reports in many organizations. While navigating through the Concur platform to access expense reports can be time-consuming, integrating it with your bot streamlines the process, allowing you to access your expense reports conveniently through simple conversational queries.

In this guide, we'll walk you through the process of integrating **Look up Expense Reports** functionality into your bot using Agent Studio.

Let's get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+my+expense+reports%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Running+Creator+Studio+plugin+to+retrieve+Expense+Reports+from+Concur%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22You+have+two+expense+reports%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ENew+test+report%3C%2Fb%3E%3Cbr%3ESubmitted+%26+Pending+Approval%3Cbr%3E%3Cb%3ETotal+Claimed+Amount%3A%3C%2Fb%3E+%2460.00%3Cbr%3EStatus%3A+%3Ci%3ECurrently+not+paid%3C%2Fi%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+in+SAP+Concur%22%2C%22connectorName%22%3A%22sap-concur%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EInternet+Reimbursement%3C%2Fb%3E%3Cbr%3ENot+submitted%3Cbr%3E%3Cb%3ETotal+Claimed+Amount%3A%3C%2Fb%3E+%2425.00%3Cbr%3EStatus%3A+%3Ci%3ENot+paid%3C%2Fi%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+in+SAP+Concur%22%2C%22connectorName%22%3A%22sap-concur%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build. 

# Installation Steps

We recommend creating the connector for SAP Concur first, prior to installing this plugin. Please follow the [SAP Concur connector](https://developer.moveworks.com/creator-studio/resources/connector?id=sap-concur) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

To efficiently build the use case, we utilize a single API.

### API #1: Expense Report Lookups

The [Expense v3 API](https://developer.concur.com/api-reference/expense/expense-report/v3.reports.html) API allows you to retrieve expense reports owned by the user.
 ```bash
      curl --location 'https://your.domain.com/api/v3.0/expense/reports?user={{user_email_address}}&limit=25&modifiedDateAfter=<last_30_days>' \
 --header 'Accept: application/json' \
 --header 'Authorization: Bearer {{generated_bearer_token}}'
 ```

**Parameters**

- **limit** - The maximum number of reports returned in a single call (default 25).

- **modifiedDateAfter** - An ISO 8601 timestamp—only reports modified after this date/time (e.g. the last 30 days) will be returned, ensuring you fetch just recent changes.