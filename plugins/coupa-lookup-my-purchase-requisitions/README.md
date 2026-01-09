---
availability: INSTALLABLE
description: A plugin that allows you to look up the details of your purchase requisitions.
installation_asset_uuid: 8e3bf4e8-0f0f-49e6-9a51-6b988f593919
name: Look Up My Purchase Requisitions Details
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+the+status+of+my+recent+requisitions%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+Coupa+for+Requisitions%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+your+recent+Requisitions+in+%3Cb%3ECoupa%3C%2Fb%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3E%3Cb%3ERQ-2024-1001%3C%2Fb%3E%3Cul%3E%3Cli%3E%3Cb%3EDescription%3C%2Fb%3E%3A+Laptop+and+Accessories%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3C%2Fb%3E%3A+Approved%3C%2Fli%3E%3Cli%3E%3Cb%3EAmount%3C%2Fb%3E%3A+%241%2C500.00%3C%2Fli%3E%3Cli%3E%3Cb%3ESubmitted+On%3C%2Fb%3E%3A+2024-01-10%3C%2Fli%3E%3Cli%3E%3Cb%3EApproved+By%3C%2Fb%3E%3A+Jane+Doe+on+2024-01-15%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ERQ-2024-1002%3C%2Fb%3E%3Cul%3E%3Cli%3E%3Cb%3EDescription%3C%2Fb%3E%3A+Office+Supplies%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3C%2Fb%3E%3A+Pending+Approval%3C%2Fli%3E%3Cli%3E%3Cb%3EAmount%3C%2Fb%3E%3A+%24200.00%3C%2Fli%3E%3Cli%3E%3Cb%3ESubmitted+On%3C%2Fb%3E%3A+2024-01-20%3C%2Fli%3E%3Cli%3E%3Cb%3EApprover%3C%2Fb%3E%3A+John+Smith%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22RQ-2024-1001%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22RQ-2024-1002%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance - Other
- Finance - Procurement
systems:
- coupa
---

# Introduction

The Look Up My Purchase Requisitions plugin allows your users to seamlessly track the status of their requisitions in Coupa directly through the Moveworks AI Assistant. Users will be able to access details, check approval status, and review the history of their requisitions, ensuring transparency and efficient monitoring while complying with your company’s policies.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+the+status+of+my+recent+requisitions%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+Coupa+for+Requisitions%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+your+recent+Requisitions+in+%3Cb%3ECoupa%3C%2Fb%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3E%3Cb%3ERQ-2024-1001%3C%2Fb%3E%3Cul%3E%3Cli%3E%3Cb%3EDescription%3C%2Fb%3E%3A+Laptop+and+Accessories%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3C%2Fb%3E%3A+Approved%3C%2Fli%3E%3Cli%3E%3Cb%3EAmount%3C%2Fb%3E%3A+%241%2C500.00%3C%2Fli%3E%3Cli%3E%3Cb%3ESubmitted+On%3C%2Fb%3E%3A+2024-01-10%3C%2Fli%3E%3Cli%3E%3Cb%3EApproved+By%3C%2Fb%3E%3A+Jane+Doe+on+2024-01-15%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ERQ-2024-1002%3C%2Fb%3E%3Cul%3E%3Cli%3E%3Cb%3EDescription%3C%2Fb%3E%3A+Office+Supplies%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3C%2Fb%3E%3A+Pending+Approval%3C%2Fli%3E%3Cli%3E%3Cb%3EAmount%3C%2Fb%3E%3A+%24200.00%3C%2Fli%3E%3Cli%3E%3Cb%3ESubmitted+On%3C%2Fb%3E%3A+2024-01-20%3C%2Fli%3E%3Cli%3E%3Cb%3EApprover%3C%2Fb%3E%3A+John+Smith%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22RQ-2024-1001%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22RQ-2024-1002%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Coupa first, prior to installing this plugin. Please follow the [Coupa Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=coupa) to create the connector. Note that for Look Up My Purchase Requisitions, you will also need to add the following permissions (the connector guide will walk you through how to add permissions):

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

- Key: requested-by[email]
Value: example@example.com
- Key: fields
Value: ["id", "status", "justification", "reject-reason-comment", "title", "ship-to-attention", "req-title", "submitted-at", "total", {"requested-by":["id","fullname"]},{"requisition_lines":["id","description","quantity","total", "total-with-estimated-tax", {"account":["id", "name"]}, {"supplier":["id", "name", {"primary-contact":["email"]}]}]}]