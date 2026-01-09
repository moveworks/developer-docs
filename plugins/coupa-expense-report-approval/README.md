---
availability: INSTALLABLE
description: A plugin that allows you to streamline the approval process for Coupa
  expense reports.
installation_asset_uuid: f1e3f1b5-610f-4c12-aff7-86569ef9acfd
name: Approve or Reject an Expense Report
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+the+expense+reports+I+need+to+approve.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYou+have+a+new+expense+report+pending+approval.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+for+new+expense+reports...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+1+new+expense+report.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EExpense+Report+Details%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EEmployee%3A%3C%2Fb%3E+Alex+Johnson%3Cbr%3E%3Cb%3EAmount%3A%3C%2Fb%3E+%24250%3Cbr%3E%3Cb%3ECategory%3A%3C%2Fb%3E+Travel+-+Conference%3Cbr%3E%3Cb%3EDescription%3A%3C%2Fb%3E+Attended+WebDevCon+2023.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Approve%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Reject%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22View+Details%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Approvals
- Finance - Other
systems:
- coupa
---

## Introduction

The **Approve or Reject an Expense Report** plugin allows users to seamlessly review and make decisions on expense reports pending their approval in Coupa, directly through the Moveworks AI Assistant. With this tool, users can efficiently approve or reject expense reports, streamlining the approval process and ensuring compliance with your company’s financial policies.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

## Prerequisites

- Access to Agent Studio
- Access to the ‘Look Up Expense Reports Pending My Approval’ plugin. The Approve or Reject plugin works after the previous plugin has been called, allowing the user to Approve or Reject an expense report pending their approval.

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+the+expense+reports+I+need+to+approve.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYou+have+a+new+expense+report+pending+approval.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+for+new+expense+reports...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+1+new+expense+report.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EExpense+Report+Details%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EEmployee%3A%3C%2Fb%3E+Alex+Johnson%3Cbr%3E%3Cb%3EAmount%3A%3C%2Fb%3E+%24250%3Cbr%3E%3Cb%3ECategory%3A%3C%2Fb%3E+Travel+-+Conference%3Cbr%3E%3Cb%3EDescription%3A%3C%2Fb%3E+Attended+WebDevCon+2023.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Approve%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Reject%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22View+Details%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Coupa first, prior to installing this plugin. Please follow the [Coupa Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=coupa) to create the connector. Note that for Approve or Reject an Expense Report, you will also need to add the following permissions (the connector guide will walk you through how to add permissions):

- User » Standard role for all users who need to create and/or approve expense reports

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### **API #1: Approvals**

The [Approvals](https://compass.coupa.com/en-us/products/product-documentation/integration-technical-documentation/the-coupa-core-api/resources/transactional-resources/approvals-api-(approvals)) API in Coupa allows you to perform various approval or rejection related actions on different entities in Coupa. We’ll be using the PUT call to update the expense report with an approval or a rejection. We’’ll be adding an Acceptance or Rejection reason as a parameter.

For accepting an expense report:

```bash
curl --request PUT \
  --url 'https://your-domain.com/api/approvals/<approval_id>/approve' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
```

With the following example params:

- Key: reason
Value: Acceptance Reason

For rejecting an expense report:

```bash
curl --request PUT \
  --url 'https://your-domain.com/api/approvals/<approval_id>/reject' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
```

With the following example params:

- Key: reason
Value: Rejection Reason

### Note

In the Coupa UI, the approval or rejection reason is displayed as a comment left by the OAuth user. Typically, this OAuth user will be a Moveworks Admin. To clearly identify who has taken action on the expense report, the plugin appends the approver's email address before the acceptance or rejection reason. This ensures transparency and clarity regarding who approved or rejected the expense report.