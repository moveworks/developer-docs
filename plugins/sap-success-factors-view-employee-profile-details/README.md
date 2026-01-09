---
availability: INSTALLABLE
description: A plugin that allows to view an employee profile details.
installation_asset_uuid: 74a2e8ce-c3d8-4867-8552-48b41054fa7b
name: View employee profile details
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHey+Copilot%2C+can+I+view+the+profile+details+for+John+Doe%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Fetching+the+profile+details+for+John+Doe.+One+moment%2C+please.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+employee+profile+details...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+the+profile+details+for+John+Doe%3A%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn%5C%22Name%5C%22%3A+%5C%22John+Doe%5C%22%2C%5Cn%5C%22Employee+ID%5C%22%3A+%5C%2212345%5C%22%2C%5Cn%5C%22Position%5C%22%3A+%5C%22Senior+Developer%5C%22%2C%5Cn%5C%22Department%5C%22%3A+%5C%22Information+Technology%5C%22%2C%5Cn%5C%22Email%5C%22%3A+%5C%22john.doe%40example.com%5C%22%2C%5Cn%5C%22Phone+Number%5C%22%3A+%5C%22%2B1-987-654-3210%5C%22%2C%5Cn%5C%22Hire+Date%5C%22%3A+%5C%22January+15%2C+2018%5C%22%2C%5Cn%5C%22Manager%5C%22%3A+%5C%22Jane+Smith%5C%22%2C%5Cn%5C%22Location%5C%22%3A+%5C%22New+York+Office%5C%22%5Cn%7D%22%2C%22caption%22%3A%22Employee+Profile%22%2C%22connectorName%22%3A%22sap-success-factors%22%7D%7D%2C%7B%22richText%22%3A%22Would+you+like+more+information+or+details+on+another+employee%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Other
systems:
- sap-success-factors
---

## Introduction

The **“View Employee Profile Details”** plugin allows users to quickly access an employee’s profile information from SAP SuccessFactors through the Moveworks AI Assistant. This ensures that users can easily view important employee details to support various HR processes and workplace interactions.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHey+Copilot%2C+can+I+view+the+profile+details+for+John+Doe%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Fetching+the+profile+details+for+John+Doe.+One+moment%2C+please.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+employee+profile+details...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+the+profile+details+for+John+Doe%3A%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn%5C%22Name%5C%22%3A+%5C%22John+Doe%5C%22%2C%5Cn%5C%22Employee+ID%5C%22%3A+%5C%2212345%5C%22%2C%5Cn%5C%22Position%5C%22%3A+%5C%22Senior+Developer%5C%22%2C%5Cn%5C%22Department%5C%22%3A+%5C%22Information+Technology%5C%22%2C%5Cn%5C%22Email%5C%22%3A+%5C%22john.doe%40example.com%5C%22%2C%5Cn%5C%22Phone+Number%5C%22%3A+%5C%22%2B1-987-654-3210%5C%22%2C%5Cn%5C%22Hire+Date%5C%22%3A+%5C%22January+15%2C+2018%5C%22%2C%5Cn%5C%22Manager%5C%22%3A+%5C%22Jane+Smith%5C%22%2C%5Cn%5C%22Location%5C%22%3A+%5C%22New+York+Office%5C%22%5Cn%7D%22%2C%22caption%22%3A%22Employee+Profile%22%2C%22connectorName%22%3A%22sap-success-factors%22%7D%7D%2C%7B%22richText%22%3A%22Would+you+like+more+information+or+details+on+another+employee%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**SAP SuccessFactors Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=sap-success-factors&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the SAP SuccessFactors integration user has the following permissions:

**Required Scopes:**

- **`View User`** – To view employee profile details

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1: FETCH_EMPLOYEE_DETAILS_BY_EMAIL**

```bash
curl --request GET \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/User?$filter=email%20eq%20%27{{email}}%27&$expand=manager&$top=20&$select=empId,defaultFullName,jobTitle,department,email,businessPhone,hireDate,location,manager/displayName' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
```

**Query Parameters:**

- `$filter` (string) – Filters users based on the email address.
- `$expand` (string) – Expands related entities.
- `$top` (integer) – Limits the number of results returned.
- `$select` (string) – Specifies which properties to return.