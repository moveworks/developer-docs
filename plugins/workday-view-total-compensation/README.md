---
availability: INSTALLABLE
description: A plugin that retrieves a user's total compensation for easy refrence.
installation_asset_uuid: bb486a06-fd85-46e1-9daf-b4ba5a940278
name: View Total Compensation
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What%27s+my+total+compensation%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EMy+Total+Compensation%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EView+Total+Compensation%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+a+breakdown+of+your+total+compensation%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ETotal+Compensation+Breakdown%3C%2Fb%3E%3Cbr%3E%3Cb%3EBase+Salary%3A%3C%2Fb%3E+%24120%2C000+annually+%3Cbr%3E%3Cb%3EExpected+Bonus+%25%3A%3C%2Fb%3E+10%25+of+base+salary+%3Cbr%3E%3Cb%3EBenefits%3A%3C%2Fb%3E+Health+insurance%2C+401k+matching+up+to+5%25%2C+Employee+Stock+Purchase+Plan%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Total+Compensation%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance - Other
- Finance - Payroll
- HR - Employee Records
- HR - Onboarding
- HR - Other
systems:
- workday
---

## **Introduction**

The “**View Total Compensation**” plugin enables employees and managers to instantly access detailed compensation information directly through the Moveworks AI Assistant. This eliminates the need to navigate Workday manually, providing fast, secure, and self-serve access to pay insights anytime.

This guide will walk you through installing and configuring the plugin in **Agent Studio** so you can provide employees with an on-demand view of their compensation details. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What%27s+my+total+compensation%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EMy+Total+Compensation%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EView+Total+Compensation%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+a+breakdown+of+your+total+compensation%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ETotal+Compensation+Breakdown%3C%2Fb%3E%3Cbr%3E%3Cb%3EBase+Salary%3A%3C%2Fb%3E+%24120%2C000+annually+%3Cbr%3E%3Cb%3EExpected+Bonus+%25%3A%3C%2Fb%3E+10%25+of+base+salary+%3Cbr%3E%3Cb%3EBenefits%3A%3C%2Fb%3E+Health+insurance%2C+401k+matching+up+to+5%25%2C+Employee+Stock+Purchase+Plan%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Total+Compensation%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, prior to installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#step-4-add-domain-security-policies-to-the-integration-systems-security-group) guide to set up the connector.

Note: For the View Total Compensation functionality to work correctly, ensure your Workday integration system user has the necessary domain permissions.

Specifically, ensure the following domain permissions are assigned with both **View** and **Get** access:

- Compensation
- Bonus
- Benefits

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1: Get Worker Details by Email**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT workdayID, fullName, businessTitle, email_PrimaryWorkOrPrimaryHome as email, employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = %27{{email}}%27"
}'
```

**Query Parameters:**

- `email`(string) -The primary home email address of the worker used to look up their Workday ID.

### **API #2: Fetch Compensation Bonus and Base Salary of the Employee**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data?limit=1000' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "query": "PARAMETERS prompt_Date2 = \"{{currentdate}}\" SELECT employeeID, compensationGrade, cf_NewTotalBasePayAmount AS Base_Salary, lastBonusOrOne_TimePayment_Amount AS Last_Bonus_Amount FROM workersForHCMReporting (dataSourceFilter = allActiveWorkers) WHERE employeeID = \"{{employee_id}}\""
}'
```

**Query Parameters:**

- `employee_id` (string) - The specific employee's ID.
- `currentdate` (string) - The current date used as a dynamic parameter.
- `limit`(integer) – Specifies the maximum number of records that can be returned in the query results.

### **API #3: Retrieve Compensation Benefits of the Employee**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data?limit=1000' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "query": "SELECT email_PrimaryWork, benefitElections { benefitPlan, coverage, dependents, beneficiaries_All, coverageBeginDateForBenefitPlan, deductionBeginDateForBenefitPlan, employerContributionPerBenefitPlanFrequency, employeeCostPerBenefitPlanFrequency } FROM indexedAllWorkers (dataSourceFilter = indexedAllWorkersFilter, includeSubordinateOrganizations = true, isActive = false) WHERE employeeID = \"{{employee_id}}\""
}'
```

**Query Parameters:**

- `employee_id` (string) - The specific employee's ID.
- `limit`(integer) – Specifies the maximum number of records that can be returned in the query results.