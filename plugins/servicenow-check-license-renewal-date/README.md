---
availability: INSTALLABLE
description: A plugin that integrates with Service Now Software Asset Management (SAM)
  and allows a team member to identify the license renewal date.
installation_asset_uuid: a2f98e5f-a35e-4d6f-a8cb-d9587952be5c
name: Look Up License Renewal Date
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+check+the+renewal+date+for+Microsoft+Office+licenses.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+Service+Now+SAM+for+Microsoft+Office+licenses%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EFound+Microsoft+Office+365+licenses.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ELicense+Details%3A%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ETotal+Licenses%3A%3C%2Fb%3E+100%3Cbr%3E%3Cb%3EUsed%3A%3C%2Fb%3E+90%3Cbr%3E%3Cb%3ERenewal+Date%3A%3C%2Fb%3E+December+12th%2C+2023%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Microsoft+Office+365+Licenses%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance - Other
- Finance - Procurement
- IT
systems:
- servicenow
---

# Introduction

The Look Up License Renewal Date plugin allows users to look up the renewal date for a particular software through their AI assistant. 

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+check+the+renewal+date+for+Microsoft+Office+licenses.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+Service+Now+SAM+for+Microsoft+Office+licenses%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EFound+Microsoft+Office+365+licenses.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ELicense+Details%3A%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ETotal+Licenses%3A%3C%2Fb%3E+100%3Cbr%3E%3Cb%3EUsed%3A%3C%2Fb%3E+90%3Cbr%3E%3Cb%3ERenewal+Date%3A%3C%2Fb%3E+December+12th%2C+2023%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Microsoft+Office+365+Licenses%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for ServiceNow first, prior to installing this plugin. Please follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector/?id=servicenow) to create the connector. Note that for Look Up License Renewal Date, you will need to also add the following permissions:

- **sam_user (Software Asset Management user)** role. More details [here](https://www.servicenow.com/docs/bundle/vancouver-it-asset-management/page/product/software-asset-management2/reference/r_SAMRoles.html).

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### **API #1: Table API**

For building this plugin, we’ll be using ServiceNow’s REST APIs, specifically the [Table API](https://www.servicenow.com/docs/bundle/xanadu-api-reference/page/integrate/inbound-rest/concept/c_TableAPI.html), which provides methods for accessing and manipulating records in database tables. 

Of the various tables that can be accessed on ServiceNow, for this use case, we are interested in the [alm_license](https://www.servicenow.com/docs/bundle/xanadu-it-asset-management/page/product/software-asset-management2/concept/c_SoftwareAssetMgmt.html) table. It helps in the systemic monitoring, assessing, and administering of software licenses, compliance, and optimization. The API provides filtering options as well, which we will be using to extract meaningful data.

We’ll be making use of the ‘End Date’ Software Entitlement field. More details can be found [here](https://www.servicenow.com/docs/bundle/xanadu-it-asset-management/page/product/software-asset-management2/reference/software-entitlement-fields.html#:~:text=Start%20date%20of%20your%20subscription,specified%20as%20the%20License%20type.).  

Please note that the ‘End Date’ field appears only if the License type list is one of Subscription, Perpetual + Maintenance, Maintenance, Perpetual + Software Assurance, Software Assurance, Step-up, or Subscription Step-up.

```bash
curl --request GET \
--url 'https://your-domain.service-now.com/api/now/table/alm_license'
--header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
```