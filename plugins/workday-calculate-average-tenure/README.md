---
availability: INSTALLABLE
description: A plugin that allows an HR analyst to calculate the average tenure of
  employees in a specified department.
difficulty_level: BEGINNER
domain:
- HR - Employee Records
fidelity: TEMPLATE
installation_asset_uuid: f27902f5-79d4-45de-87ec-1ce29488cf82
name: Calculate Average Tenure
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What%E2%80%99s+the+average+tenure+in+Sales%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+departments+matching+%27Sales%27+in+%3Cb%3EWorkday%3C%2Fb%3E.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+3+matching+departments.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+departments+with+%27Sales%27+in+the+name.+Which+one+are+you+interested+in%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Sales+-+US%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Sales+-+EMEA%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22All+Sales+Departments%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sales+-+US%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Running+report+in+%3Cb%3EWorkday%3C%2Fb%3E+to+calculate+average+tenure+for+the+%27Sales+-+US%27+department.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Report+complete.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+average+tenure+for+the+%3Cb%3ESales+-+US%3C%2Fb%3E+department+is+5.2+years.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Average+Tenure+-+Sales+US%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Employee Records
systems:
- workday
time_in_minutes: 30
---

## **Introduction**

The **“Calculate Average Tenure”** plugin helps users determine the average tenure of employees in a specific department—directly through the Moveworks AI Assistant. By fetching employee data for the selected organization and calculating the average length of service, the plugin provides quick and accurate tenure insights without manual effort. This data-driven approach supports HR teams in workforce analysis, strategic planning, and understanding employee retention trends.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What%E2%80%99s+the+average+tenure+in+Sales%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+departments+matching+%27Sales%27+in+%3Cb%3EWorkday%3C%2Fb%3E.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+3+matching+departments.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+departments+with+%27Sales%27+in+the+name.+Which+one+are+you+interested+in%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Sales+-+US%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Sales+-+EMEA%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22All+Sales+Departments%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sales+-+US%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Running+report+in+%3Cb%3EWorkday%3C%2Fb%3E+to+calculate+average+tenure+for+the+%27Sales+-+US%27+department.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Report+complete.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+average+tenure+for+the+%3Cb%3ESales+-+US%3C%2Fb%3E+department+is+5.2+years.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Average+Tenure+-+Sales+US%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, prior to installing this plugin. Please follow the  [Workday Connector](https://marketplace.moveworks.com/connectors/workday?hist=home%2Cbrws#how-to-implement) guide to set up the connector.

Specifically, ensure the following domain permissions are assigned with both **View** and **Get** access:

- Worker Tenure Information

**Tenant Configuration:**

All Workday API endpoints in this plugin use `{{TENANT}}` as a placeholder. After installation, replace `{{TENANT}}` in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)

Make sure to update this across all actions that reference the Workday API.

### Creation of custom field 'cf_TenureInYears' and its purpose:

This field is created to calculate employee tenure in years for reporting and analysis.

Steps to Create cf_TenureInYears:

- In Workday, search for **Create Calculated Field**.
- For **Business Object**, choose **Worker**.
- Set **Name = TenureInYears**.
- For the **Function**, choose **Date Difference**.
- Set **Parameters:**
    - **Start Date = Hire Date**
    - **End Date = Current Date**
- Click **OK** → **Save**.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix:-**

### **API #1 : Get Supervisory Organization List Details**

```bash
curl --location 'https://<your-instance>/ccx/api/common/v1/{{TENANT}}/supervisoryOrganizations' \
--header 'Authorization: Bearer <your-access-token>'
```

**Path Parameters** 

- `supervisoryOrganizations` - Retrieve the list of available supervisory organizations

### **API #2 : Get Average Tenure by Supervisory Organization**

```bash
curl --location 'https://<your-instance>/ccx/api/wql/v1/{{TENANT}}/data' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>' \
--data '{
"query": "SELECT AVG(cf_TenureInYears) AS avg_tenure_years FROM indexedAllWorkers (dataSourceFilter = indexedAllWorkersFilter, includeSubordinateOrganizations = true) WHERE supervisoryOrganization='{{SUPERVISORY_ORG_ID}}'"
}'
```

**Body Parameters**

- `{{SUPERVISORY_ORG_ID}}` – Supervisory organization ID to be passed based on the user’s input

