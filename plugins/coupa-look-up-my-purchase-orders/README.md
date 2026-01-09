---
availability: INSTALLABLE
description: A plugin that allows you to look up the details of your purchase orders.
installation_asset_uuid: 4672def5-adf8-41e3-a4a7-55466b35f0a2
name: Look Up My Purchase Orders
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+purchase+orders+are+shipped+to+me%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+look+up+your+Purchase+Orders+in+%3Cb%3ECoupa%3C%2Fb%3E.+Here+are+the+most+recent+ones%3A%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Querying+Coupa+for+purchase+orders+shipped+to+the+current+user%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3E%3Cb%3EPO-1234%3C%2Fb%3E+-+Supplier%3A+Acme+Corp+-+Amount%3A+%241%2C000+-+Status%3A+Approved%3C%2Fli%3E%3Cli%3E%3Cb%3EPO-5678%3C%2Fb%3E+-+Supplier%3A+Beta+Inc+-+Amount%3A+%24500+-+Status%3A+Shipped%3C%2Fli%3E%3Cli%3E%3Cb%3EPO-9101%3C%2Fb%3E+-+Supplier%3A+Gamma+Ltd+-+Amount%3A+%24250+-+Status%3A+Partially+Received%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PO-1234%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22PO-5678%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22PO-9101%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance - Procurement
systems:
- coupa
---

# Introduction

The Look Up My Purchase Orders plugin empowers users to easily track the status of their purchase orders in Coupa directly through the Moveworks AI Assistant. Users can check orders shipped to them and access crucial details, such as the total amount, current status, order ID, and quantity of items ordered. This ensures transparency and efficient monitoring while adhering to your company’s policies.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+purchase+orders+are+shipped+to+me%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+look+up+your+Purchase+Orders+in+%3Cb%3ECoupa%3C%2Fb%3E.+Here+are+the+most+recent+ones%3A%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Querying+Coupa+for+purchase+orders+shipped+to+the+current+user%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3E%3Cb%3EPO-1234%3C%2Fb%3E+-+Supplier%3A+Acme+Corp+-+Amount%3A+%241%2C000+-+Status%3A+Approved%3C%2Fli%3E%3Cli%3E%3Cb%3EPO-5678%3C%2Fb%3E+-+Supplier%3A+Beta+Inc+-+Amount%3A+%24500+-+Status%3A+Shipped%3C%2Fli%3E%3Cli%3E%3Cb%3EPO-9101%3C%2Fb%3E+-+Supplier%3A+Gamma+Ltd+-+Amount%3A+%24250+-+Status%3A+Partially+Received%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PO-1234%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22PO-5678%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22PO-9101%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Coupa first, prior to installing this plugin. Please follow the [Coupa Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=coupa) to create the connector. Note that for Look Up My Purchase Orders, you will also need to add the following permissions (the connector guide will walk you through how to add permissions):

- User » Standard role for all users who need to create and/or approve requisitions

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### **API #1: View Purchase Orders**

The [Purchase Orders](https://compass.coupa.com/en-us/products/product-documentation/integration-technical-documentation/the-coupa-core-api/resources/transactional-resources/purchase-orders-api-(purchase_orders)) API in Coupa allows you to perform various actions on Purchase Orders. We’ll be using the GET call to get purchase orders. We’’ll be filtering by email ID and use the ‘fields’ parameter to limit our API response to relevant details. 

```bash
curl --request GET \
  --url 'https://your-domain.com/api/purchase_orders' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
```

With the following example params:

- Key: ship-to-user[email]
  - Value: example@example.com
- Key: fields
  - Value: ["id", "status", "po-number", "total-with-estimated-tax", {"requisition_header":["id", {"requested_by":["email", "fullname"]}, {"requisition_lines":["description", "quantity"]}]}, {"supplier":["id", "name", {"primary_contact":["id", "email"]}]}]
