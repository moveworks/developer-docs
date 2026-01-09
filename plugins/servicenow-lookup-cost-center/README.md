---
availability: INSTALLABLE
description: A plugin that allows someone to look up the ID of a cost center.
installation_asset_uuid: 28c429a8-ba01-4b41-b1e6-1546073d7f98
name: Look Up a Cost Center ID by its Name
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+is+the+cost+center+ID+for+Finance%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+ID%3Cb%3E+of+Finance+Cost+Center%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Cost+Center%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+cost+center+ID+for+%3Cb%3EFinance%3C%2Fb%3E+is+%3Cb%3EACN00003%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Cost+Center%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance - Other
- Finance - Procurement
systems:
- servicenow
video: https://youtu.be/DDmmd2eRphw
---

# Introduction

The Look Up a Cost Center ID by its Name plugin allows users to easily find details about cost centers such as their IDs through their AI assistant. 

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+is+the+cost+center+ID+for+Finance%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+ID%3Cb%3E+of+Finance+Cost+Center%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Cost+Center%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+cost+center+ID+for+%3Cb%3EFinance%3C%2Fb%3E+is+%3Cb%3EACN00003%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Cost+Center%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for ServiceNow first, prior to installing this plugin. Please follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector/?id=servicenow) to create the connector. Note that for Look Up a Cost Center ID by its Name, you will need to also add the following permissions:

- read access to the Cost Center table (cmn_cost_center).

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### **API #1: Table API**

For building this plugin, we’ll be using ServiceNow’s REST APIs, specifically the [Table API](https://www.servicenow.com/docs/bundle/xanadu-api-reference/page/integrate/inbound-rest/concept/c_TableAPI.html), which provides methods for accessing and manipulating records in database tables. 

Of the various tables that can be accessed on ServiceNow, for this use case, we are interested in the [`cmn_cost_center`](https://www.servicenow.com/docs/bundle/xanadu-source-to-pay-operations/page/product/accounts-payable-operations/reference/cost-center.html#d191812e38) table. It specifically contains information related to financial cost centers within an organization. It has filtering options as well, which we’ll be using. 

```bash
curl --request GET \
--url 'https://your-domain.service-now.com/api/now/table/cmn_cost_center'
--header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
```