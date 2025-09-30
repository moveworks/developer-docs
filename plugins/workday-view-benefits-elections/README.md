---
availability: INSTALLABLE
description: A plugin that looks up an employees benefits information.
difficulty_level: INTERMEDIATE
domain:
- HR - Other
- HR - Benefits
- HR - Onboarding
fidelity: TEMPLATE
installation_asset_uuid: f0452204-332f-4e85-963c-6a1b7f0fb2af
name: View Benefit Elections
num_implementations: 0
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+are+my+healthcare+benefits+elections+again%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EChecking+your+benefits+details+in+Workday.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+your+benefits+details%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3E%3Cb%3EHealth+Insurance%3C%2Fb%3E%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EPlan%3A%3C%2Fb%3E+Family+Coverage%3Cbr%3E%3Cb%3EEnrollment+Status%3A%3C%2Fb%3E+Active%3Cbr%3E%3Cb%3EDeductible%3A%3C%2Fb%3E+%241%2C200%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Benefits+Enrollment%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Benefits
- HR - Onboarding
- HR - Other
systems:
- workday
time_in_minutes: 20
video: https://youtu.be/CCEYG_K9Pzg
---

# **Introduction :**

The **“View Benefit Elections”** plugin enables employees to quickly view their current benefit elections in Workday, all through the Moveworks AI Assistant. This helps users review their benefits without having to navigate Workday manually.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. 

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+are+my+healthcare+benefits+elections+again%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EChecking+your+benefits+details+in+Workday.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+your+benefits+details%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3E%3Cb%3EHealth+Insurance%3C%2Fb%3E%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EPlan%3A%3C%2Fb%3E+Family+Coverage%3Cbr%3E%3Cb%3EEnrollment+Status%3A%3C%2Fb%3E+Active%3Cbr%3E%3Cb%3EDeductible%3A%3C%2Fb%3E+%241%2C200%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Benefits+Enrollment%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View access` to worker data

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

## API #1: Get Benefit Elections

The **Get Benefit Elections** API retrieves the current benefit elections of a user.

```bash
curl --request POST \
curl --location 'https://<DOMAIN>.myworkday.com/api/wql/v1/<TENANT>/data' \
--header 'Content-Type: application/json' \
--data '{
    "query": "SELECT workdayID, fullName, email_PrimaryWork, benefitElections{benefitPlan, coverage, dependents, beneficiaries_All, coverageBeginDateForBenefitPlan, deductionBeginDateForBenefitPlan, employerContributionPerBenefitPlanFrequency, employeeCostPerBenefitPlanFrequency,currentlyEnrolledAsOfDate}, benefitPlans_CurrentlyEnrolled FROM indexedAllWorkers (dataSourceFilter = indexedAllWorkersFilter, includeSubordinateOrganizations = true, isActive = false) WHERE email_PrimaryWork = '\''{{email}}'\''"
}'
```

**Query Parameters :**

- `email`  (string) – The email address of the user whose current benefit election want to view.