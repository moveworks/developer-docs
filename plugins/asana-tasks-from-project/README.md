---
availability: IDEA
description: A plugin that allows you get all the tasks from a project.
domain:
- Productivity
- Project Management
fidelity: GUIDE
name: Get tasks from a project
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+all+tasks+for+the+Moveworks+Project.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searches+Asana+for+tasks+within+the+%27Moveworks+Project%27%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+tasks+found+in+Asana+for+the+Moveworks+Project%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ETask+1%3A+Finalize+design+specs%3C%2Fb%3E%3Cbr%3EDue+Date%3A+2024-12-15%3Cbr%3EStatus%3A+In+Progress%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ETask+2%3A+Update+documentation%3C%2Fb%3E%3Cbr%3EDue+Date%3A+2024-12-18%3Cbr%3EStatus%3A+Not+Started%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ETask+3%3A+Client+feedback+meeting%3C%2Fb%3E%3Cbr%3EDue+Date%3A+2024-12-20%3Cbr%3EStatus%3A+Completed%22%7D%5D%7D%5D%7D
solution_tags:
- Productivity
- Project Management
systems:
- asana
difficulty_level: BEGINNER
time_in_minutes: 30
---
# Introduction

The **Asana Get Tasks from Project** plugin allows users to retrieve task lists from an Asana project directly through the Moveworks AI Assistant. With this plugin, users can quickly access task details such as due dates, assignees, and statuses without leaving their workflow.

This guide will help you install and configure the plugin in **Agent Studio** within minutes. Let’s get started!

# Prerequisites

- Access to Agent Studio
- [Asana Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=asana) built in Creator Studio (follow the Asana Authentication guide to create your connector)

# What are we building?

## Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Get+a+list+of+tasks+from+a+project%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EYour+request+is+being+processed+for+the+%3Cb%3EQuantumFlow%3C%2Fb%3E+workspace.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ETo+continue%2C+I+need+you+to+select+which+team%E2%80%99s+project+tasks+you+want+to+view.+Here+are+your+available+teams%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EMarketing+Team+-+USA%3C%2Fb%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EMarketing+Team+-+India%3C%2Fb%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EEngineering+Team+-+EMEA%3C%2Fb%3E%3C%2Fli%3E%3C%2Fol%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EPlease+reply+with+the+number+of+the+team+you+want+to+view+tasks+for.%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%221%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EYou+have+selected+the+%3Cb%3EMarketing+Team+-+USA%3C%2Fb%3E+team.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ENow%2C+please+select+which+project+you+want+to+view+tasks+for.+Here+are+your+available+projects+in+this+team%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EQ3+Marketing+Campaign%3C%2Fb%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EProduct+Launch+v2%3C%2Fb%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EInternal+Tooling%3C%2Fb%3E%3C%2Fli%3E%3C%2Fol%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EReply+with+the+number+of+the+project+you+want+to+see+tasks+for.%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%221%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EResolved+Selection%3C%2Fb%3E%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EWorkspace%3A%3C%2Fb%3E+QuantumFlow%3C%2Fli%3E%3Cli%3E%3Cb%3ETeam%3A%3C%2Fb%3E+Marketing+Team+-+USA%3C%2Fli%3E%3Cli%3E%3Cb%3EProject%3A%3C%2Fb%3E+Q3+Marketing+Campaign%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+tasks+currently+in+this+project%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EDevelop+social+media+strategy%3C%2Fb%3E%3Cbr+%2F%3E%3Cb%3EAssignee%3A%3C%2Fb%3E+Alice+Smith%3Cbr+%2F%3E%3Cb%3ECreated+at%3A%3C%2Fb%3E+2025-07-15%3Cbr+%2F%3E%3Cb%3EDue+on%3A%3C%2Fb%3E+2025-08-01%3Cbr+%2F%3E%3Cb%3ECompleted%3A%3C%2Fb%3E+No%3Cbr+%2F%3E%3Cb%3ENotes%3A%3C%2Fb%3E+Outline+key+platforms+and+content+pillars+for+Q3.%3C%2Fli%3E%3Cli%3E%3Cb%3EDraft+press+release+for+product+launch%3C%2Fb%3E%3Cbr+%2F%3E%3Cb%3EAssignee%3A%3C%2Fb%3E+Alice+Smith%3Cbr+%2F%3E%3Cb%3ECreated+at%3A%3C%2Fb%3E+2025-07-18%3Cbr+%2F%3E%3Cb%3EDue+on%3A%3C%2Fb%3E+2025-08-05%3Cbr+%2F%3E%3Cb%3ECompleted%3A%3C%2Fb%3E+No%3Cbr+%2F%3E%3Cb%3ENotes%3A%3C%2Fb%3E+Include+product+features+and+target+audience+benefits.%3C%2Fli%3E%3Cli%3E%3Cb%3ECoordinate+with+sales+for+lead+generation+assets%3C%2Fb%3E%3Cbr+%2F%3E%3Cb%3EAssignee%3A%3C%2Fb%3E+Alice+Smith%3Cbr+%2F%3E%3Cb%3ECreated+at%3A%3C%2Fb%3E+2025-07-20%3Cbr+%2F%3E%3Cb%3EDue+on%3A%3C%2Fb%3E+2025-08-10%3Cbr+%2F%3E%3Cb%3ECompleted%3A%3C%2Fb%3E+No%3Cbr+%2F%3E%3Cb%3ENotes%3A%3C%2Fb%3E+Ensure+assets+align+with+Q3+sales+targets.%3C%2Fli%3E%3C%2Fol%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fww) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our **Asana Connector Guide** to do so. Once completed, follow our plugin installation documentation to install the **Asana Get Tasks from Project** plugin in minutes.

For **Asana Get Tasks from Project**, you will also need to add the following permissions:

**Required Scopes:**

- `workspaces:read` – Allows reading available workspaces
- `teams:read` – Allows reading teams in a workspace
- `projects:read` – Allows reading project details
- `tasks:read` – Allows reading task details from a project
- `Assign Necessary Permissions` - Ensure that the admin account used to generate the Personal Access token for your Asana connector is explicitly added to all Asana Workspaces where the plugin need to operate.

After configuring the connector, refer to our installation documentation for more details on completing the setup.

# Appendix

### **API #1: Get Workspaces**

The Get Workspaces API returns all workspaces available in the scope of the integration.

```bash
curl --request GET \
     --url https://app.asana.com/api/1.0/workspaces \
     --header 'accept: application/json'
```

**Response:** Returns all workspaces the authenticated integration has access to. No filters required.

### **API #2: Get Teams for a User**

The Get Teams for a User API retrieves the list of teams that a given user belongs to in a specific workspace.

```bash
curl --request GET \
     --url https://app.asana.com/api/1.0/users/{{user_gid}}/teams?workspace={{workspace_gid}} \
     --header 'accept: application/json'
```

**Path Parameters:**

- `user_gid` (string) – The GID of the user.

**Query Parameters:**

- `workspace` (string) – The GID of the workspace to scope the teams.

### **API #3: Get Projects in a Workspace/Team**

The Get Projects API retrieves the list of projects for a given team in a workspace.

```bash
curl --request GET \
     --url 'https://app.asana.com/api/1.0/projects?workspace={{workspace_gid}}&team={{team_gid}}' \
     --header 'accept: application/json'
```

**Query Parameters:**

- `workspace` (string) – The GID of the workspace.
- `team` (string) – The GID of the team within the workspace.

### **API #4: Get Tasks from a Project**

The [Get Tasks from a Project](https://developers.asana.com/reference/gettasksforproject) API retrieves a list of tasks within a specific Asana project.

```bash
curl --request GET \
     --url 'https://app.asana.com/api/1.0/projects/{{project_gid}}/tasks?opt_fields=gid,name,notes,assignee.gid,assignee.name,assignee.email,completed,completed_at,created_at,modified_at,due_on,start_on,projects.name,tags.name,followers.name,workspace.name,dependencies.name,dependents.name,subtasks.name,subtasks.completed,subtasks.assignee.name,subtasks.due_on,subtasks.notes' \
     --header 'accept: application/json'
```

**Path Parameters:**

- `project_gid` (string) – The GID of the project whose tasks you want to retrieve.

**Query Parameters:**

- `opt_fields` (string) – Comma-separated list of fields to include in the response, including task metadata and subtasks.

To retrieve tasks from a specific project, you need to navigate the Asana hierarchy step by step. First, identify the **workspace**, then fetch the **teams** within that workspace that the user is part of, followed by the **projects** under a team. Once you have the `project_gid`, you can call the **Get Tasks from a Project** API to fetch task details and subtasks.