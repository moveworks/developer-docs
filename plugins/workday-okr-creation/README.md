---
availability: INSTALLABLE
description: A plugin that allows a manager to set and track new performance goals
  for team members.
difficulty_level: INTERMEDIATE
domain:
- HR - Other
- HR - Performance Management
fidelity: TEMPLATE
installation_asset_uuid: 0a7a760c-c9eb-456a-b589-4fed0b766d0b
name: Set Goals for Direct Reports
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+set+performance+OKRs+for+Drew.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EJust+to+clarify%2C+you%27re+referring+to+Drew+Downs%2C+your+report%2C+right%3F%3Cbr%3E%3Cbr%3EI+found+a+few+other+Drews+including%3Cbr%3E-+Drew+Smith%3Cbr%3E-+Drew+Ponce%3Cbr%3E-+Drew+Wei%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes%2C+I+want+to+set+a+goal+for+him+and+his+team+to+generate+3000+marketing+qualified+leads+this+half.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+update+his+OKRs+for+you.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+the+OKRs%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EEmployee%3A+%3C%2Fb%3EDrew+Downs%3Cbr%3E%3Cb%3EOKR+Period%3C%2Fb%3E%3A+FY2026H1%3Cbr%3E%3Cb%3EObjective%3A+%3C%2Fb%3EIncrease+pipeline.%3Cbr%3E%3Cb%3EKey+Result%3A+%3C%2Fb%3EGenerate+3000+marketing+qualified+leads.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Add+OKR+to+Workday%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit+Details%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Other
- HR - Performance Management
systems:
- workday
time_in_minutes: 20
---

# **Introduction :**

The **“Set Goals For Direct Reports”** plugin allows managers to seamlessly set performance goals for their direct reports in Workday - all through the Moveworks AI Assistant. This eliminates the need for manual navigation to Workday and streamlines the goal-setting process.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes.

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+set+performance+OKRs+for+Drew.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EJust+to+clarify%2C+you%27re+referring+to+Drew+Downs%2C+your+report%2C+right%3F%3Cbr%3E%3Cbr%3EI+found+a+few+other+Drews+including%3Cbr%3E-+Drew+Smith%3Cbr%3E-+Drew+Ponce%3Cbr%3E-+Drew+Wei%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes%2C+I+want+to+set+a+goal+for+him+and+his+team+to+generate+3000+marketing+qualified+leads+this+half.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+update+his+OKRs+for+you.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+the+OKRs%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EEmployee%3A+%3C%2Fb%3EDrew+Downs%3Cbr%3E%3Cb%3EOKR+Period%3C%2Fb%3E%3A+FY2026H1%3Cbr%3E%3Cb%3EObjective%3A+%3C%2Fb%3EIncrease+pipeline.%3Cbr%3E%3Cb%3EKey+Result%3A+%3C%2Fb%3EGenerate+3000+marketing+qualified+leads.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Add+OKR+to+Workday%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit+Details%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://marketplace.moveworks.com/connectors/workday?hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- **`View access`** to Worker Profile
- **`View and modify access`** to Performance Goals / Goal Details

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

## API #1: Get Workday ID By Email

The **Get Workday ID By Email** API retrieves the workday ID by Email of an user.

```bash
curl --request POST\
--location 'https://<DOMAIN>.myworkday.com/ccx/api/wql/v1/{{TENANT}}/data' \
--header 'Authorization: Bearer <ACCESS TOKEN>' \
--header 'Content-Type: application/json' \
--data-raw '{
    "query": "SELECT workdayID, fullName,businessTitle, email_PrimaryWorkOrPrimaryHome as email ,employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = '\''{{email}}'\''"
}'
```

**Query Parameters :**

- `email`  (string) – The email address of the user whose Workday ID you want to retrieve.

## API #2: Get Worker Direct Reports

The **Get Worker Direct Reports** API retrieves the direct reports of a manager.

```bash
curl --request GET \
--location 'https://<DOMAIN>.myworkday.com/api/v1/{{TENANT}}/workers/<WORKER_ID>/directReports' \
--header 'Authorization: Bearer <Access token>' \
--header 'Content-Type: application/json' \
```

**Path Parameters :**

- `WORKER_ID` (string) – The worker ID of the manager whose direct reports you want to retrieve.

## API #3: Workday Add Personal Goals

The **Workday Add Personal Goals** API is used to set goals for the direct reports of a manager.

```bash
curl --request POST \
--location 'https://<DOMAIN>.myworkday.com/service/{{TENANT}}/Performance_Management/v42.1' \
--header 'Authorization: Bearer <ACCESS TOKEN>' \
--header 'Content-Type: text/xml' \
--data '<env:Envelope xmlns:env="http://schemas.xmlsoap.org/soap/envelope/"
              xmlns:wd="urn:com.workday/bsvc"
              xmlns:xsd="http://www.w3.org/2001/XMLSchema"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <env:Body>
    <wd:Manage_Goals_Request>
      <wd:Manage_Goals_Data>
        <wd:Worker_Reference>
          <wd:ID wd:type="WID">{{WORKER_ID}}</wd:ID>
        </wd:Worker_Reference>
        <wd:Worker_Goal_Detail_Data>
          <wd:Name>{{GOAL_NAME}}</wd:Name>
          <wd:Description>{{GOAL_DESCRIPTION}}</wd:Description>
          <wd:Due_Date>{{DUE_DATE}}</wd:Due_Date >
        </wd:Worker_Goal_Detail_Data>
      </wd:Manage_Goals_Data>
    </wd:Manage_Goals_Request>
  </env:Body>
</env:Envelope>'
```

**Request Body Parameters :**

- `WORKER_ID` (string) – The Workday ID of the direct report for whom the goal is to be set.
- `GOAL_NAME` (string) – The name of the goal to be set for the direct report.
- `GOAL_DESCRIPTION` (string) – The description of the goal to be set for the direct report.
- `DUE_DATE`(string) – The due date of the goal.