---
availability: INSTALLABLE
description: A plugin that allows an employee to identify open roles at the company.
installation_asset_uuid: 909c3806-10d8-44a6-a6ee-b965dde4ce95
name: View Open Jobs
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What+open+roles+in+PM+are+available%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EOpen+PM+Roles+Available%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EView+Open+Jobs%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+current+open+PM+roles+we+have%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EOpen+PM+Roles%3C%2Fb%3E%3Cbr%3E%3Cb%3E1.+Senior+Product+Manager%3C%2Fb%3E+%3Cbr%3E%3Cb%3E2.+Product+Manager+-+New+Initiatives%3C%2Fb%3E+%3Cbr%3E%3Cb%3E3.+Associate+Product+Manager%3C%2Fb%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22View+in+Greenhouse%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- sap-success-factors
---

# **Introduction :**

The **View_Open_Jobs** plugin allows users to view open job postings in SAP SuccessFactors directly through the Moveworks AI Assistant. With this plugin, users can quickly and easily access available job opportunities, helping them stay informed and take the next step in their career growth.

This guide will help you install and configure the plugin in Agent Studio within minutes. 

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What+open+roles+in+PM+are+available%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EOpen+PM+Roles+Available%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EView+Open+Jobs%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+current+open+PM+roles+we+have%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EOpen+PM+Roles%3C%2Fb%3E%3Cbr%3E%3Cb%3E1.+Senior+Product+Manager%3C%2Fb%3E+%3Cbr%3E%3Cb%3E2.+Product+Manager+-+New+Initiatives%3C%2Fb%3E+%3Cbr%3E%3Cb%3E3.+Associate+Product+Manager%3C%2Fb%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22View+in+Greenhouse%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**SAP SuccessFactors Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=sap-success-factors&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the SAP SuccessFactors integration user has the following permissions:

**Required Scopes:**

- `View` access to the **User** entity

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

## API #1: Fetch open job postings

The **View Open Jobs** API retrieves a list of currently available job postings.

```bash
curl --request GET
--location --location 'https://<API_SERVER>/odata/v2/JobRequisitionLocale?%24top=20' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Query Parameters :**

- `optional_fields`– Specify additional fields to include in the response, such as $top.