---
availability: INSTALLABLE
description: A plugin that integrates with Service Now Software Asset Management (SAM)
  and allows a team member to look up license inventory.
installation_asset_uuid: 4448c494-e659-4269-b237-9bf964b895c8
name: Check Software License Inventory
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22How+many+licenses+do+we+have+left+for+HyperCAD%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Queries+ServiceNow+for+HyperCAD+software+licenses.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EChecking+HyperCAD+licenses+in+ServiceNow...%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYou+have+%3Cb%3E15%3C%2Fb%3E+remaining+licenses+for+HyperCAD+out+of+%3Cb%3E100%3C%2Fb%3E+total+licenses.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22HyperCAD+Licenses%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance - Other
- Finance - Procurement
- IT
systems:
- servicenow
---

# Introduction

The Check Software License Inventory plugin allows users to look up the available licenses that can be allocated for a particular software through their AI assistant. 

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22How+many+licenses+do+we+have+left+for+HyperCAD%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Queries+ServiceNow+for+HyperCAD+software+licenses.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EChecking+HyperCAD+licenses+in+ServiceNow...%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYou+have+%3Cb%3E15%3C%2Fb%3E+remaining+licenses+for+HyperCAD+out+of+%3Cb%3E100%3C%2Fb%3E+total+licenses.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22HyperCAD+Licenses%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for ServiceNow first, prior to installing this plugin. Please follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector/?id=servicenow) to create the connector. Note that for Check Software License Inventory, you will need to also add the following permissions:

- **sam_user (Software Asset Management user)** role. More details [here](https://www.servicenow.com/docs/bundle/vancouver-it-asset-management/page/product/software-asset-management2/reference/r_SAMRoles.html).

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### **API #1: Table API**

For building this plugin, we’ll be using ServiceNow’s REST APIs, specifically the [Table API](https://www.servicenow.com/docs/bundle/xanadu-api-reference/page/integrate/inbound-rest/concept/c_TableAPI.html), which provides methods for accessing and manipulating records in database tables. 

Of the various tables that can be accessed on ServiceNow, for this use case, we are interested in the [alm_license](https://www.servicenow.com/docs/bundle/xanadu-it-asset-management/page/product/software-asset-management2/concept/c_SoftwareAssetMgmt.html) table. It helps in the systemic monitoring, assessing, and administering of software licenses, compliance, and optimization. The API provides filtering options as well, which we will be using to extract meaningful data. 

```bash
curl --request GET \
--url 'https://your-domain.service-now.com/api/now/table/alm_license'
--header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
```