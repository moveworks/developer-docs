---
availability: INSTALLABLE
description: 'A plugin that allows employees to securely and instantly retrieve and

  view their payslips. This eliminates the need to navigate through different disconnected

  payslips, providing a seamless, self-service experience.'
installation_asset_uuid: 27d5a79c-aee2-4671-97e9-d95f0f8565b5
name: Look Up Payslips
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+view+my+payslips%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Okay+I+can+help+you+with+that.+Can+you+please+specify+a+time+range%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22last+quarter+of+2024%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+the+time+range+as+October+1%2C+2024+to+December+31%2C+2024.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+payslips+from+SAP+SuccessFactors+for+the+specified+period.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+your+payslips+for+the+last+quarter+of+2024%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EOctober+2024%3C%2Fb%3E%3Cul%3E%3Cli%3EGross+Pay%3A+%248000%3C%2Fli%3E%3Cli%3ETaxes+Paid%3A+%241500%3C%2Fli%3E%3Cli%3EOther+Deductions%3A+%24500%3C%2Fli%3E%3Cli%3ENet+Pay%3A+%246000%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ENovember+2024%3C%2Fb%3E%3Cul%3E%3Cli%3EGross+Pay%3A+%248000%3C%2Fli%3E%3Cli%3ETaxes+Paid%3A+%241700%3C%2Fli%3E%3Cli%3EOther+Deductions%3A+%24500%3C%2Fli%3E%3Cli%3ENet+Pay%3A+%245800%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EDecember+2024%3C%2Fb%3E%3Cul%3E%3Cli%3EGross+Pay%3A+%248000%3C%2Fli%3E%3Cli%3ETaxes+Paid%3A+%241800%3C%2Fli%3E%3Cli%3EOther+Deductions%3A+%24500%3C%2Fli%3E%3Cli%3ENet+Pay%3A+%245700%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Payslip+-+October+2024%22%7D%2C%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Payslip+-+November+2024%22%7D%2C%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Payslip+-+December+2024%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22How+much+did+I+pay+in+taxes+for+this+time+period%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Calculating+total+taxes+paid+from+the+retrieved+payslip+data+for+October+%28%241500%29%2C+November+%28%241700%29%2C+and+December+%28%241800%29+2024.%22%7D%5D%7D%2C%7B%22richText%22%3A%22You+have+paid+%245000+in+taxes+for+last+quarter+of+2024.%22%7D%5D%7D%5D%7D
solution_tags:
- Finance - Other
- Finance - Payroll
- HR - Other
systems:
- sap-success-factors
---

# **Introduction**

The **Look Up Payslips** plugin enables employees to instantly access their historical payslips from SAP SuccessFactors directly through the Moveworks AI Assistant. Users can quickly retrieve key details such as pay period, gross pay, deductions, and net pay, with the option to download the full payslip document when needed. This eliminates the hassle of logging into the SAP portal, ensuring employees have fast, secure, and convenient access to their payroll information anytime.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# **Prerequisites**

- Access to Agent Studio

# **What are we building?**

# **Agent Design**

This [**purple chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+view+my+payslips%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Okay+I+can+help+you+with+that.+Can+you+please+specify+a+time+range%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22last+quarter+of+2024%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+the+time+range+as+October+1%2C+2024+to+December+31%2C+2024.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+payslips+from+SAP+SuccessFactors+for+the+specified+period.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+your+payslips+for+the+last+quarter+of+2024%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EOctober+2024%3C%2Fb%3E%3Cul%3E%3Cli%3EGross+Pay%3A+%248000%3C%2Fli%3E%3Cli%3ETaxes+Paid%3A+%241500%3C%2Fli%3E%3Cli%3EOther+Deductions%3A+%24500%3C%2Fli%3E%3Cli%3ENet+Pay%3A+%246000%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ENovember+2024%3C%2Fb%3E%3Cul%3E%3Cli%3EGross+Pay%3A+%248000%3C%2Fli%3E%3Cli%3ETaxes+Paid%3A+%241700%3C%2Fli%3E%3Cli%3EOther+Deductions%3A+%24500%3C%2Fli%3E%3Cli%3ENet+Pay%3A+%245800%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EDecember+2024%3C%2Fb%3E%3Cul%3E%3Cli%3EGross+Pay%3A+%248000%3C%2Fli%3E%3Cli%3ETaxes+Paid%3A+%241800%3C%2Fli%3E%3Cli%3EOther+Deductions%3A+%24500%3C%2Fli%3E%3Cli%3ENet+Pay%3A+%245700%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Payslip+-+October+2024%22%7D%2C%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Payslip+-+November+2024%22%7D%2C%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Payslip+-+December+2024%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22How+much+did+I+pay+in+taxes+for+this+time+period%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Calculating+total+taxes+paid+from+the+retrieved+payslip+data+for+October+%28%241500%29%2C+November+%28%241700%29%2C+and+December+%28%241800%29+2024.%22%7D%5D%7D%2C%7B%22richText%22%3A%22You+have+paid+%245000+in+taxes+for+last+quarter+of+2024.%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**SAP SuccessFactors Connector Guide**](https://marketplace.moveworks.com/marketplace/package/?id=sap-success-factors&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the SAP SuccessFactors integration user has the following permissions:

**Required Scopes:**

- **`View`** access to the **User** entity
- **`View`** access to the **EmployeePayrollRunResults** entity
    - **`View`** access to the **EmployeePayrollRunResultsItems** entity

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

# **API #1: Fetch an Employee’s User Information**

The **Fetch User information** API retrieves a User’s details based on a given User Attribute Filter (in this case, User Email). With this API, you can add filters and display selected fields using query params.

```bash
curl --request GET \
--location 'https://<API_SERVER>/odata/v2/User?$filter=email%20eq%20%27{{user_email}}%27&$select=userId' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Query Parameters :**

- $filter (string) ****– Filter items by property values
- $select (array[string]) – Select properties to be returned
- **`optional_fields`**(string) – Specify additional fields to include in the response, such as $top,$skip

# **API #2: Fetch an Employee’s Payslips**

The **Fetch an Employee’s Payslips (EmployeePayrollRunResults)** API retrieves a User’s Payslip information based on a given User Attribute Filter (in this case, User ID, Start Date & End Date). With this API, you can add filters, display selected fields, and expand on line items within specific fields using query params.

```bash
curl --request GET \
--location 'https://<API_SERVER>/odata/v2/EmployeePayrollRunResults?$filter=userId%20eq%20%27{{user_id}}%27%20and%20payDate%20ge%20datetime%27{{start_date}}%27%20and%20payDate%20le%20datetime%27{{end_date}}%27&$select=externalCode,currency,userId,employeePayrollRunResultsItems/externalCode,employeePayrollRunResultsItems/wageType,employeePayrollRunResultsItems/amount,employeePayrollRunResultsItems/startDateWhenEarned,employeePayrollRunResultsItems/endDateWhenEarned&$expand=employeePayrollRunResultsItems' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Query Parameters :**

- $filter (string) ****– Filter items by property values
- $select (array[string]) ****– Select properties to be returned
- $expand (string) ****– Additional field to be included to view details like pay amount, wage type, pay dates, etc (payroll information or personal details).
- **`optional_fields`**(string) – Specify additional fields to include in the response, such as $top,$skip
- **Important Note**
    - The `$expand` query parameter lets you look up related field, while the `$select` query parameter is used to display specific fields for the expanded fields. To show additional details from an expanded entity, use the format: `<entity_name>/<nested_field_to_be_displayed>`.