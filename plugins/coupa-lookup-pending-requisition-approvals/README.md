---
availability: INSTALLABLE
description: A plugin that allows you to look up purchase requisitions pending your
  approval.
installation_asset_uuid: 595700e6-1e8c-4011-8ece-ca58ff3e1eb6
name: Look Up Purchase Requisitions Pending My Approval
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+the+purchase+requisitions+pending+my+approval%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Gathering+purchase+requisitions+pending+your+approval+from+Coupa...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22Sure%2C+I+can+get+that+from+%3Cb%3ECoupa%3C%2Fb%3E.+Here+are+the+requisitions+awaiting+your+approval%3A%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Requisition+RQ-2024-100%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22Requisition+RQ-2024-101%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22Requisition+RQ-2024-102%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22richText%22%3A%22Would+you+like+to+see+the+details+of+any+of+these+requisitions%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+show+me+the+details+for+RQ-2024-101%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+details+for+Requisition+RQ-2024-101+from+Coupa...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22Okay%2C+one+moment.%22%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+Requisition+RQ-2024-101+from+%3Cb%3ECoupa%3C%2Fb%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%5Cn++%3Cli%3E%3Cb%3ESupplier%3A%3C%2Fb%3E+Staples%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDescription%3A%3C%2Fb%3E+Office+Supplies%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EAmount%3A%3C%2Fb%3E+%24250.00%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ERequester%3A%3C%2Fb%3E+Jane+Doe%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Requisition+RQ-2024-101%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22View+Full+Details%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance - Other
systems:
- coupa
---

# Introduction

The Look Up My Pending Requisition Approvals plugin allows your users to seamlessly track the details of purchase requisitions pending their approval in Coupa directly through the Moveworks AI Assistant. 

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+the+purchase+requisitions+pending+my+approval%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Gathering+purchase+requisitions+pending+your+approval+from+Coupa...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22Sure%2C+I+can+get+that+from+%3Cb%3ECoupa%3C%2Fb%3E.+Here+are+the+requisitions+awaiting+your+approval%3A%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Requisition+RQ-2024-100%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22Requisition+RQ-2024-101%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22Requisition+RQ-2024-102%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22richText%22%3A%22Would+you+like+to+see+the+details+of+any+of+these+requisitions%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+show+me+the+details+for+RQ-2024-101%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+details+for+Requisition+RQ-2024-101+from+Coupa...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22Okay%2C+one+moment.%22%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+Requisition+RQ-2024-101+from+%3Cb%3ECoupa%3C%2Fb%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%5Cn++%3Cli%3E%3Cb%3ESupplier%3A%3C%2Fb%3E+Staples%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDescription%3A%3C%2Fb%3E+Office+Supplies%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EAmount%3A%3C%2Fb%3E+%24250.00%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ERequester%3A%3C%2Fb%3E+Jane+Doe%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Requisition+RQ-2024-101%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22View+Full+Details%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Coupa first, prior to installing this plugin. Please follow the [Coupa Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=coupa) to create the connector. Note that for View my Requisitions, you will need to also add the following permissions (the connector guide will walk you through how to add permissions):

- User » Standard role for all users who need to create and/or approve requisitions

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### **API #1: View Requisitions**

The [Requisitions](https://compass.coupa.com/en-us/products/product-documentation/integration-technical-documentation/the-coupa-core-api/resources/transactional-resources/requisitions-api-(requisitions)) API in Coupa allows you to perform various actions on Requisitions. We’ll be using the GET call to get requisitions. We’’ll be filtering by email ID and use the ‘fields’ parameter to limit our API response to relevant details. 

```bash
curl --request PUT \
  --url 'https://your-domain.com/api/requisitions' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
```

With the following example params:

- Key: current_approver_association[email]
Value: example@example.com
- Key: fields
Value: ["id", "status", "justification", "reject-reason-comment", "title", "ship-to-attention", "req-title", "submitted-at", "total", {"requested_by":["id","fullname"]},{"requisition_lines":["id","description","quantity","total", "total-with-estimated-tax", {"account":["id", "name"]}, {"supplier":["id", "name", {"primary-contact":["email"]}]}]}, {"current_approval":["id", {"approver":["fullname"]}]}]