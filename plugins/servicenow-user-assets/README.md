---
availability: INSTALLABLE
description: A plugin that allows a user to query their associated assets such as
  laptops, headphones etc.
installation_asset_uuid: b5a0d33a-e374-4f1a-9c80-a058d6e4050a
name: Look Up My Assets
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+assets+are+currently+registered+under+my+name%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ECheck+My+User+Assets%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+User+Assets%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere%27s+a+list+of+assets+currently+registered+under+your+name%3A%3Cbr%3E%3Cb%3ELaptop%3A%3C%2Fb%3E+Dell+XPS+15%3Cbr%3E%3Cb%3EMouse%3A%3C%2Fb%3E+Wireless+Mouse+-+Logitech+M720%3Cbr%3E%3Cb%3EKeyboard%3A%3C%2Fb%3E+Mechanical+RGB%3Cbr%3E%3Cb%3EHeadphones%3A%3C%2Fb%3E+Noise+Cancelling+Headphones+-+Bose+QC35%3Cbr%3E%3Cbr%3EIs+there+anything+specific+you+would+like+to+do+with+these+assets+or+any+additional+information+you+require%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Dell+XPS+15%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Wireless+Mouse+-+Logitech+M720%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Mechanical+RGB%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Noise+Cancelling+Headphones+-+Bose+QC35%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance - Other
- Finance - Procurement
- IT
systems:
- servicenow
video: https://www.loom.com/share/ca81f360b91244e6818dc68cb42e2694?sid=d8b54972-00aa-4d47-9539-8b548018e518
---

# Introduction

The Look Up My Assets plugin allows users to look up important asset details, such as its tag and display name through their AI assistant. 

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+assets+are+currently+registered+under+my+name%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ECheck+My+User+Assets%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+User+Assets%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere%27s+a+list+of+assets+currently+registered+under+your+name%3A%3Cbr%3E%3Cb%3ELaptop%3A%3C%2Fb%3E+Dell+XPS+15%3Cbr%3E%3Cb%3EMouse%3A%3C%2Fb%3E+Wireless+Mouse+-+Logitech+M720%3Cbr%3E%3Cb%3EKeyboard%3A%3C%2Fb%3E+Mechanical+RGB%3Cbr%3E%3Cb%3EHeadphones%3A%3C%2Fb%3E+Noise+Cancelling+Headphones+-+Bose+QC35%3Cbr%3E%3Cbr%3EIs+there+anything+specific+you+would+like+to+do+with+these+assets+or+any+additional+information+you+require%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Dell+XPS+15%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Wireless+Mouse+-+Logitech+M720%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Mechanical+RGB%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Noise+Cancelling+Headphones+-+Bose+QC35%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for ServiceNow first, prior to installing this plugin. Please follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector/?id=servicenow) to create the connector. Note that for Look Up My Assets, you will need to also add the following permissions:

- **asset (Asset Manager)** role. More details [here](https://www.servicenow.com/docs/bundle/xanadu-it-service-management/page/product/asset-management/reference/r_InstalledWithAssetManagement.html).

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### **API #1: Table API**

For building this plugin, we’ll be using ServiceNow’s REST APIs, specifically the [Table API](https://www.servicenow.com/docs/bundle/xanadu-api-reference/page/integrate/inbound-rest/concept/c_TableAPI.html), which provides methods for accessing and manipulating records in database tables. 

Of the various tables that can be accessed on ServiceNow, for this use case, we are interested in the [**`alm_asset`**](https://www.servicenow.com/docs/bundle/xanadu-it-service-management/page/product/asset-management/reference/r_InstalledWithAssetManagement.html) table. It specifically contains information about the assets—both IT and non-IT—that are managed within ServiceNow. The API provides filtering options as well, which we will be using to extract meaningful data. 

```bash
curl --request GET \
--url '[https://your-domain.service-now.com/api/now/table/alm_asset?](https://api/now/table/alm_asset?sysparm_query=assigned_to.email%3Dexample%40email.com&sysparm_fields=model_category.name,display_name,asset_tag)sysparm_query=assigned_to.email%3Dexample%[40email.com](http://40email.com/)&sysparm_fields=model_category.name%2C%20display_name%2C%20asset_tag\'
--header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
```