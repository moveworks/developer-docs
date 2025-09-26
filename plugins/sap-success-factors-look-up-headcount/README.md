---
availability: IDEA
description: A plugin that enables HR Managers to instantly retrieve a snapshot view
  of departmental resourcing.
domain:
- HR - Employee Records
fidelity: GUIDE
name: Look Up Headcount by Department
difficulty_level: INTERMEDIATE
time_in_minutes: 30
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+get+headcount+for+our+departments+in+Bangalore%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+intent+to+retrieve+department+headcount.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Extracting+location+filter%3A+Bangalore.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+for+departments+located+in+Bangalore+in+SAP+SuccessFactors.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Okay%2C+I+can+get+the+headcount+for+departments+in+Bangalore.+I+found+the+following+departments%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWould+you+like+the+headcount+for+all+of+these%2C+or+specific+ones%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+for+Sales+and+Marketing%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+specified+%27Sales+-+Bangalore%27+and+%27Marketing+-+Bangalore%27.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Retrieving+headcount+data+for+%27Sales+-+Bangalore%27+and+%27Marketing+-+Bangalore%27+from+SAP+SuccessFactors.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EUnderstood.+Here+is+the+headcount+for+%3Cb%3ESales+-+Bangalore%3C%2Fb%3E+and+%3Cb%3EMarketing+-+Bangalore%3C%2Fb%3E%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Sales+-+Bangalore%22%7D%2C%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Marketing+-+Bangalore%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ESales+-+Bangalore%3A%3C%2Fb%3E+120+employees%3C%2Fli%3E%3Cli%3E%3Cb%3EMarketing+-+Bangalore%3A%3C%2Fb%3E+85+employees%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Employee Records
systems:
- sap-success-factors

---
## Introduction

The “**Look Up Headcount by Department**” plugin enables HR Managers to instantly retrieve a snapshot view of departmental resourcing through the Moveworks AI Assistant. It eliminates delays and manual processes, empowering HR teams to make faster, data-driven workforce planning and resource allocation decisions.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+get+headcount+for+our+departments+in+Bangalore%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Identifying+intent+to+retrieve+department+headcount.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Extracting+location+filter%3A+Bangalore.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Searching+for+departments+located+in+Bangalore+in+SAP+SuccessFactors.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Okay%2C+I+can+get+the+headcount+for+departments+in+Bangalore.+I+found+the+following+departments%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWould+you+like+the+headcount+for+all+of+these%2C+or+specific+ones%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+for+Sales+and+Marketing%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+specified+%27Sales+-+Bangalore%27+and+%27Marketing+-+Bangalore%27.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Retrieving+headcount+data+for+%27Sales+-+Bangalore%27+and+%27Marketing+-+Bangalore%27+from+SAP+SuccessFactors.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EUnderstood.+Here+is+the+headcount+for+%3Cb%3ESales+-+Bangalore%3C%2Fb%3E+and+%3Cb%3EMarketing+-+Bangalore%3C%2Fb%3E%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Sales+-+Bangalore%22%7D%2C%7B%22connectorName%22%3A%22sap-successfactors%22%2C%22citationTitle%22%3A%22Marketing+-+Bangalore%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ESales+-+Bangalore%3A%3C%2Fb%3E+120+employees%3C%2Fli%3E%3Cli%3E%3Cb%3EMarketing+-+Bangalore%3A%3C%2Fb%3E+85+employees%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**SAP SuccessFactors Connector**](https://marketplace.moveworks.com/connectors/sap-success-factors#how-to-implement) Guide for detailed instructions. Once completed, proceed to install the **Look Up Headcount by Department** plugin and complete the setup efficiently.

For this plugin, ensure the SAP SuccessFactors integration HR managers have the following permissions:

**Required Scopes:**
- `View` access to the **FODepartment** entity
- `View` access to the **EmpJob** entity

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### API#1:  Get Departments By Department name

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/FODepartment?%24expand=toDepartmentApprenticeDetail&%24filter=substringof(%27{{DEPARTMENT_NAME}}%27%2C%20name)&%24select=externalCode%2Cname%2toDepartmentApprenticeDetail' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `DEPARTMENT_NAME` (string) – Used to retrieve the Departments

### API#2:  Get All Departments

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/FODepartment?%24select=externalCode%2Cname&%24top=100&%24skip=0' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

### API#3: Get Headcounts By Department ID

```bash
curl --location 'https://<YOUR_INSTANCE>/odata/v2/EmpJob?%24filter=department%20eq%20%27{{DEPARTMENT_ID}}%27&%24select=userId%2Cdepartment%2Clocation' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `DEPARTMENT_ID` (string) – Used to retrieve the department head counts