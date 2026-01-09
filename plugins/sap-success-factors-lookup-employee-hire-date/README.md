---
availability: INSTALLABLE
description: A plugin that fetches the hiring date of an employee.
installation_asset_uuid: 8beda148-ad77-46fb-9c59-8830283926ea
name: Lookup Employee Hire Date
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+know+the+hire+date+for+John+Doe.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFetching+John+Doe%27s+Email+from+People+Directory%26nbsp%3B%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EFound+multiple+John+Doe%27s%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFound+Multiple+John+Doe%27s%2C+Which+one+do+you+want+me+to+fetch+the+information+for%3F+%3Cbr%3E%5Cn%3Cbr%3E%5Cn1.+John+M.+Doe%E2%80%93+Senior+Software+Engineer+I%2C+Machine+Learning.+Email%3A+%3Ca+href%3D%5C%22mailto%3Arnatarajan%40moveworks.ai%5C%22+rel%3D%5C%22noopener+noreferrer%5C%22+target%3D%5C%22_blank%5C%22%3E%3Cu%3Ejohn.doe%40example.com%3C%2Fu%3E%3C%2Fa%3E%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E2.+John+Doe+%E2%80%93+Product+Analyst%2C+Product+Management.+Email%3A+%3Ca+href%3D%5C%22mailto%3Arthakur%40moveworks.ai%5C%22+rel%3D%5C%22noopener+noreferrer%5C%22+target%3D%5C%22_blank%5C%22%3E%3Cu%3Ejohn.d%40example.com%3C%2Fu%3E%3C%2Fa%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFetching+the+hire+date+for+John+M.+Doe.+One+moment%2C+please.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+employee+hire+date...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%27s+hire+date+is+%3Cb%3EJanuary+15%2C+2018%3C%2Fb%3E.%22%7D%2C%7B%22richText%22%3A%22Is+there+anything+else+I+can+help+you+with%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Other
systems:
- sap-success-factors
---

## **Introduction :**

The **“Employee Hire Date”** plugin allows users to retrieve the hire date of an employee from SAP SuccessFactors directly through the Moveworks AI Assistant. With this plugin, users can quickly access and review the hire date information for any employee.

This guide will help you install and configure the plugin in Agent Studio within minutes. Let’s get started!

## Prerequisites :

- Access to Agent Studio

## What are we building?

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+know+the+hire+date+for+John+Doe.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFetching+John+Doe%27s+Email+from+People+Directory%26nbsp%3B%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EFound+multiple+John+Doe%27s%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFound+Multiple+John+Doe%27s%2C+Which+one+do+you+want+me+to+fetch+the+information+for%3F+%3Cbr%3E%5Cn%3Cbr%3E%5Cn1.+John+M.+Doe%E2%80%93+Senior+Software+Engineer+I%2C+Machine+Learning.+Email%3A+%3Ca+href%3D%5C%22mailto%3Arnatarajan%40moveworks.ai%5C%22+rel%3D%5C%22noopener+noreferrer%5C%22+target%3D%5C%22_blank%5C%22%3E%3Cu%3Ejohn.doe%40example.com%3C%2Fu%3E%3C%2Fa%3E%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E2.+John+Doe+%E2%80%93+Product+Analyst%2C+Product+Management.+Email%3A+%3Ca+href%3D%5C%22mailto%3Arthakur%40moveworks.ai%5C%22+rel%3D%5C%22noopener+noreferrer%5C%22+target%3D%5C%22_blank%5C%22%3E%3Cu%3Ejohn.d%40example.com%3C%2Fu%3E%3C%2Fa%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFetching+the+hire+date+for+John+M.+Doe.+One+moment%2C+please.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+employee+hire+date...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%27s+hire+date+is+%3Cb%3EJanuary+15%2C+2018%3C%2Fb%3E.%22%7D%2C%7B%22richText%22%3A%22Is+there+anything+else+I+can+help+you+with%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in Agent Studio beforehand to streamline the process. Please follow our  [SAP Successfactors Connector](https://developer.moveworks.com/marketplace/package/?id=sap-success-factors&hist=home%2Cbrws#how-to-implement) Guide to configure the connection.

Note: To enable the Lookup Employee Hire Date functionality, ensure the SAP SuccessFactors integration user has the necessary permission scopes.

**Required Scopes:**

- `View` access to the **employee records** entity

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### API #1: **Get Hire Date by Email**

The **Employee Hire Date** API retrieves a hireDate using user’s email.

```bash
curl --request GET
--location 'https://<API_SERVER_DOMAIN>/odata/v2/User?%24top=30&%24filter=email%20eq%20%27<email>%27&%24select=hireDate' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Query Parameters:**

- `<email>` (string) – The email of the user whose hire date you want to retrieve. This will provide the hire date of the employee.
- `$select` (string) – Specifies which properties to return.