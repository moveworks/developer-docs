---
availability: IDEA
description: A plugin that allows employees to view their current benefit elections
  (e.g. health, retirement, insurance plans).
domain:
- HR - Other
- HR - Benefits
- HR - Onboarding
fidelity: GUIDE
name: Look Up Benefit Elections
difficulty_level: BEGINNER
time_in_minutes: 20
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22show+me+my+benefits%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Parsing+user+request+to+view+benefit+elections.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Accessing+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESAP+SuccessFactors%3C%2Fb%3E+to+retrieve+current+benefit+elections+for+the+current+user.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+your+current+benefit+elections%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EHealth+Insurance%3C%2Fb%3E%3A+BlueCross+BlueShield+PPO+-+Family+Coverage%3C%2Fli%3E%3Cli%3E%3Cb%3EDental+Insurance%3C%2Fb%3E%3A+MetLife+Dental+-+High+Plan%3C%2Fli%3E%3Cli%3E%3Cb%3E401k+Retirement+Plan%3C%2Fb%3E%3A+Fidelity+Investments+-+10%25+Contribution%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-success-factors%22%2C%22citationTitle%22%3A%22Benefit+Election%3A+BlueCross+BlueShield+PPO%22%7D%2C%7B%22connectorName%22%3A%22sap-success-factors%22%2C%22citationTitle%22%3A%22Benefit+Election%3A+MetLife+Dental%22%7D%2C%7B%22connectorName%22%3A%22sap-success-factors%22%2C%22citationTitle%22%3A%22Benefit+Election%3A+Fidelity+401k%22%7D%5D%7D%2C%7B%22richText%22%3A%22Which+benefit+would+you+like+to+see+more+details+for%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+details+for+my+Health+Insurance%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+specific+benefit+requested%3A+Health+Insurance.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+detailed+information+for+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHealth+Insurance%3C%2Fb%3E+plan+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESAP+SuccessFactors%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+your+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHealth+Insurance%3C%2Fb%3E+plan%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EPlan+Name%3C%2Fb%3E%3A+BlueCross+BlueShield+PPO%3C%2Fli%3E%3Cli%3E%3Cb%3ECoverage+Type%3C%2Fb%3E%3A+Family%3C%2Fli%3E%3Cli%3E%3Cb%3EEffective+Date%3C%2Fb%3E%3A+January+1%2C+2024%3C%2Fli%3E%3Cli%3E%3Cb%3EMonthly+Premium%3C%2Fb%3E%3A+%24550.00%3C%2Fli%3E%3Cli%3E%3Cb%3EDeductible%3C%2Fb%3E%3A+%241%2C500+%28Individual%29%2C+%243%2C000+%28Family%29%3C%2Fli%3E%3Cli%3E%3Cb%3EOut-of-Pocket+Max%3C%2Fb%3E%3A+%245%2C000+%28Individual%29%2C+%2410%2C000+%28Family%29%3C%2Fli%3E%3Cli%3E%3Cb%3EProvider+Network%3C%2Fb%3E%3A+PPO+Network%3C%2Fli%3E%3Cli%3E%3Cb%3EEmployer+Contribution%3C%2Fb%3E%3A+80%25%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-success-factors%22%2C%22citationTitle%22%3A%22Benefit+Details%3A+BlueCross+BlueShield+PPO+-+Family+Coverage%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Benefits
- HR - Onboarding
- HR - Other
systems:
- sap-success-factors

---

## **Introduction**

The **“Look Up Benefit Elections”** plugin allows employees to instantly view their current benefit elections—like health, retirement, and insurance plans—directly through the Moveworks AI Assistant. It provides real-time access to SAP SuccessFactors data, improving transparency and reducing HR inquiries.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22show+me+my+benefits%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Parsing+user+request+to+view+benefit+elections.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Accessing+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESAP+SuccessFactors%3C%2Fb%3E+to+retrieve+current+benefit+elections+for+the+current+user.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+your+current+benefit+elections%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EHealth+Insurance%3C%2Fb%3E%3A+BlueCross+BlueShield+PPO+-+Family+Coverage%3C%2Fli%3E%3Cli%3E%3Cb%3EDental+Insurance%3C%2Fb%3E%3A+MetLife+Dental+-+High+Plan%3C%2Fli%3E%3Cli%3E%3Cb%3E401k+Retirement+Plan%3C%2Fb%3E%3A+Fidelity+Investments+-+10%25+Contribution%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-success-factors%22%2C%22citationTitle%22%3A%22Benefit+Election%3A+BlueCross+BlueShield+PPO%22%7D%2C%7B%22connectorName%22%3A%22sap-success-factors%22%2C%22citationTitle%22%3A%22Benefit+Election%3A+MetLife+Dental%22%7D%2C%7B%22connectorName%22%3A%22sap-success-factors%22%2C%22citationTitle%22%3A%22Benefit+Election%3A+Fidelity+401k%22%7D%5D%7D%2C%7B%22richText%22%3A%22Which+benefit+would+you+like+to+see+more+details+for%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+details+for+my+Health+Insurance%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+specific+benefit+requested%3A+Health+Insurance.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+detailed+information+for+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHealth+Insurance%3C%2Fb%3E+plan+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESAP+SuccessFactors%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+your+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHealth+Insurance%3C%2Fb%3E+plan%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EPlan+Name%3C%2Fb%3E%3A+BlueCross+BlueShield+PPO%3C%2Fli%3E%3Cli%3E%3Cb%3ECoverage+Type%3C%2Fb%3E%3A+Family%3C%2Fli%3E%3Cli%3E%3Cb%3EEffective+Date%3C%2Fb%3E%3A+January+1%2C+2024%3C%2Fli%3E%3Cli%3E%3Cb%3EMonthly+Premium%3C%2Fb%3E%3A+%24550.00%3C%2Fli%3E%3Cli%3E%3Cb%3EDeductible%3C%2Fb%3E%3A+%241%2C500+%28Individual%29%2C+%243%2C000+%28Family%29%3C%2Fli%3E%3Cli%3E%3Cb%3EOut-of-Pocket+Max%3C%2Fb%3E%3A+%245%2C000+%28Individual%29%2C+%2410%2C000+%28Family%29%3C%2Fli%3E%3Cli%3E%3Cb%3EProvider+Network%3C%2Fb%3E%3A+PPO+Network%3C%2Fli%3E%3Cli%3E%3Cb%3EEmployer+Contribution%3C%2Fb%3E%3A+80%25%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-success-factors%22%2C%22citationTitle%22%3A%22Benefit+Details%3A+BlueCross+BlueShield+PPO+-+Family+Coverage%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up SAP SuccessFactors before installing this plugin. Please follow the [SAP SuccessFactors connector](https://marketplace.moveworks.com/connectors/sap-success-factors#how-to-implement) guide to configure the connection.

You will also need to add the following permission:

- **`Read access`** to **BenefitEnrollment** and **User** objects.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix**

### **API #1: Get Employee Benefits Summary**

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/BenefitEnrollment?$expand=benefitNav,workerIdNav&$select=id,effectiveStartDate,effectiveStatus,benefit,externalName,benefitNav/benefitType,workerIdNav/email&$orderby=effectiveStartDate desc&$filter=workerIdNav/email eq '{{userEmail}}' and substringof(tolower('{{benefitType}}'), tolower(benefitNav/benefitType))' \
--header 'Authorization: Bearer ACCESS_TOKEN' \
--header 'Accept: application/json'
```

**Query Parameters:**

- **`$filter`** (string) – Filters benefit enrollments based on the **employee’s email** (`{{userEmail}}`) and optionally the **benefit type** (`{{benefitType}}`).
- **`$select`** (string) – Specifies which fields to return, such as **id**, **effectiveStartDate**, **effectiveStatus**, **benefit**, **externalName**, and **workerIdNav/email**.
- **`$expand`** (string) – Expands related entities like **benefitNav** and **workerIdNav** to include benefit type details and employee information.
- **`$orderby`** (string) – Orders results, e.g., by **effectiveStartDate desc** to get the most recent enrollment first.

### **API #2: Get Specific Benefit Details**

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/BenefitEnrollment?$filter=workerIdNav/email eq '{{userEmail}}' and benefit eq '{{benefitId}}'&$orderby=createdDateTime desc&$top=1&$expand=benefitNav,workerIdNav,benefitInsurancePlanEnrollmentDetails,benefitInsurancePlanEnrollmentDetails/planNav,benefitInsurancePlanEnrollmentDetails/coverageNav,benefitInsurancePlanEnrollmentDetails/providerNav,schedulePeriodNav,currencyNav' \
--header 'Authorization: Bearer ACCESS_TOKEN' \
--header 'Accept: application/json'
```

**Query Parameters:**

- **`$filter`** (string) – Filters benefit enrollments based on the **employee’s email** (`{{userEmail}}`) and the **benefit ID** (`{{benefitId}}`).
- **`$select`** (string) – Specifies which fields to return, such as **id**, **effectiveStartDate**, **effectiveStatus**, **benefit**, **externalName**, and **workerIdNav/email**.
- **`$expand`** (string) – Expands related entities like **benefitNav**, **workerIdNav**, **benefitInsurancePlanEnrollmentDetails**, **planNav**, **coverageNav**, **providerNav**, **schedulePeriodNav**, and **currencyNav** to include detailed benefit and employee information.
- **`$orderby`** (string) – Orders results by fields such as **createdDateTime desc** to get the most recent enrollment first.
- **`$top`** (integer) – Limits the number of results returned, e.g., `1` to fetch only the latest record.