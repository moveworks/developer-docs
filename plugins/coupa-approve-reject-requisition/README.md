---
accreditations:
- DEFAULT
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: 6068a9a3-886a-40dc-a170-a97b90c4e9cb
name: Approve or Reject a Purchase Requisition
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+approve+some+requisitions+in+Coupa.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22No+problem.+Here+are+the+requisitions+pending+your+approval+in+%3Cb%3ECoupa%3C%2Fb%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3EREQ-1234%3A+Laptop+for+new+employee+%28requested+by+John+Doe%29%3C%2Fli%3E%3Cli%3EREQ-5678%3A+Office+supplies+%28requested+by+Jane+Smith%29%3C%2Fli%3E%3Cli%3EREQ-9012%3A+Travel+expenses+%28requested+by+Peter+Jones%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22richText%22%3A%22Which+requisition+would+you+like+to+approve%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22REQ-1234%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+you+want+to+approve+REQ-1234%3A+Laptop+for+new+employee+%28requested+by+John+Doe%29.%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Approve%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Reject%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Approve%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Approved+REQ-1234.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22REQ-1234%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance
systems:
- coupa
time_in_minutes: 20
video: https://www.loom.com/share/6f3d22bc767d489e97dabe66b132d789?sid=a00d2ba3-38d3-4ed7-8151-8e7688a6e7e2
---

# Introduction

The Approve or Reject a Purchase Requisition plugin empowers your users to effortlessly manage purchase requisition approvals in Coupa, allowing them to approve or reject requests directly through the Moveworks AI Assistant.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- Access to the ‘Look Up Purchase Requisitions Pending My Approval’ plugin. The Approve or Reject plugin works after the previous plugin has been called, allowing the user to Approve or Reject a requisition pending their approval.

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+approve+some+requisitions+in+Coupa.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22No+problem.+Here+are+the+requisitions+pending+your+approval+in+%3Cb%3ECoupa%3C%2Fb%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3EREQ-1234%3A+Laptop+for+new+employee+%28requested+by+John+Doe%29%3C%2Fli%3E%3Cli%3EREQ-5678%3A+Office+supplies+%28requested+by+Jane+Smith%29%3C%2Fli%3E%3Cli%3EREQ-9012%3A+Travel+expenses+%28requested+by+Peter+Jones%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22richText%22%3A%22Which+requisition+would+you+like+to+approve%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22REQ-1234%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+you+want+to+approve+REQ-1234%3A+Laptop+for+new+employee+%28requested+by+John+Doe%29.%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Approve%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Reject%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Approve%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Approved+REQ-1234.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22REQ-1234%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Coupa first, prior to installing this plugin. Please follow the [Coupa Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=coupa) to create the connector. Note that for Approve or Reject a Purchase Requisition, you will also need to add the following permissions (the connector guide will walk you through how to add permissions):

- User » Standard role for all users who need to create and/or approve requisitions

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace) for more information on how to install a plugin. 

# Appendix

### **API #1: Approvals**

The [Approvals](https://compass.coupa.com/en-us/products/product-documentation/integration-technical-documentation/the-coupa-core-api/resources/transactional-resources/approvals-api-(approvals)) API in Coupa allows you to perform various approval or rejection related actions on different entities in Coupa. We’ll be using the PUT call to update the requisition with an approval or a rejection. We’’ll be adding an Acceptance or Rejection reason as a parameter.

For accepting a requisition:

```bash
curl --request PUT \
  --url 'https://your-domain.com/api/approvals/<approval_id>/approve' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
```

With the following example params:

- Key: reason
Value: Acceptance Reason

For rejecting a requisition:

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

In the Coupa UI, the approval or rejection reason is displayed as a comment left by the OAuth user. Typically, this OAuth user will be a Moveworks Admin. To clearly identify who has taken action on the requisition, the plugin appends the approver's email address before the acceptance or rejection reason. This ensures transparency and clarity regarding who approved or rejected the requisition.