---
description: A plugin that allows you to view your tax elections in Workday.
difficulty_level: INTERMEDIATE
fidelity: TEMPLATE
installation_asset_uuid: 24c17699-f23c-4e15-8cc3-c047e1e6e460
name: View Tax Elections
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+view+my+tax+elections.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI%27ll+retrieve+your+tax+elections+from+Workday.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+tax+elections+from+Workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+your+current+tax+elections%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EFederal+Tax+Election%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A+%3C%2Fb%3E+Married%3Cbr%3E%3Cb%3EAllowances%3A+%3C%2Fb%3E+2%3Cbr%3E%3Cb%3EAdditional+withholding%3A+%3C%2Fb%3E+%24100%3Cbr%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EState+Tax+Election%3C%2Fb%3E%3Cbr%3E%3Cb%3EState%3A+%3C%2Fb%3E+California%3Cbr%3E%3Cb%3EStatus%3A+%3C%2Fb%3E+Single%3Cbr%3E%3Cb%3EAllowances%3A+%3C%2Fb%3E+1%3Cbr%3E%3Cb%3EAdditional+withholding%3A+%3C%2Fb%3E+%2450%3Cbr%3E%22%7D%5D%7D%5D%7D
solution_tags:
- HR
systems:
- workday
time_in_minutes: 20
---

# **Introduction :**

Workday is a leading enterprise management platform, and the **“ View Tax Elections”** feature allows users to view current tax election. Integrating this functionality into your bot enables users to seamlessly browse job listings, enhancing efficiency and organization.

This guide provides step-by-step instructions for incorporating the **View Tax Elections** feature into your bot using Agent Studio.

Let's get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+view+my+tax+elections.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI%27ll+retrieve+your+tax+elections+from+Workday.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+tax+elections+from+Workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+your+current+tax+elections%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EFederal+Tax+Election%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A+%3C%2Fb%3E+Married%3Cbr%3E%3Cb%3EAllowances%3A+%3C%2Fb%3E+2%3Cbr%3E%3Cb%3EAdditional+withholding%3A+%3C%2Fb%3E+%24100%3Cbr%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EState+Tax+Election%3C%2Fb%3E%3Cbr%3E%3Cb%3EState%3A+%3C%2Fb%3E+California%3Cbr%3E%3Cb%3EStatus%3A+%3C%2Fb%3E+Single%3Cbr%3E%3Cb%3EAllowances%3A+%3C%2Fb%3E+1%3Cbr%3E%3Cb%3EAdditional+withholding%3A+%3C%2Fb%3E+%2450%3Cbr%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View access` to worker data : Payroll data

**Tenant Configuration:**

All Workday API endpoints in this plugin use `<TENANT>` as a placeholder. After installation, replace `<TENANT>` in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.:
    
    `https://impl.workday.com/**your_tenant**/...`
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

## API #1: Get Tax Elections

The **Get Tax Elections** API retrieves the current tax elections of a user.

```bash
curl --request GET
--location 'https://<DOMAIN>/api/wql/v1/<TENANT>/data?query=SELECT%20stateWithholdingWork_AdditionalAmount%2C%20stateWithholdingResident_MaritalStatus%2C%20stateWithholdingResident_NumberOfAllowances%2C%20federalWithholdingW_4_AdditionalAmount%2C%20federalWithholdingW_4_MaritalStatus%2C%20federalWithholdingW_4_NumberOfAllowances%20FROM%20workerFromEmailAddress%20(emailAddress%20%3D%20%27{{email}}%27)' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Query Parameters :**

- `email`  (string) – The email address of the user whose current tax election want to view.