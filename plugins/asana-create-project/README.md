---
description: Plugin that allows you to create a project in Asana.
fidelity: GUIDE
time_in_minutes: 30
difficulty_level: BEGINNER
name: Create a Project
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+create+a+project+in+Asana%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+let%27s+create+a+new+project+in+%3Cb%3EAsana%3C%2Fb%3E.++What+would+you+like+to+name+the+project%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Project+Phoenix%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Got+it.+And+which+team+should+this+project+belong+to%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+Marketing+Team%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+and+what+is+the+due+date%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22December+31%2C+2024%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27m+ready+to+create+the+%3Cstrong%3EProject+Phoenix%3C%2Fstrong%3E+project.%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EProject+Name%3C%2Fstrong%3E%3A+Project+Phoenix%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ETeam%3C%2Fstrong%3E%3A+Marketing+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EDue+Date%3C%2Fstrong%3E%3A+December+31%2C+2024%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3EDoes+this+look+right%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Confirm%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+creating+the+project...%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+project+in+Asana...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I%27ve+created+the+%5C%22Project+Phoenix%5C%22+project+in+Asana%21%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Project+Phoenix%22%2C%22connectorName%22%3A%22asana%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
- Project Management
systems:
- asana

---

# Introduction

The **Create Project** plugin enables users to create new projects in Asana directly through the Moveworks AI Assistant. Users can define key project attributes such as project name, due date, privacy settings, team, workspace, and more, ensuring seamless project setup within their Asana environment.

This guide will help you install and use the plugin quickly in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- [Asana Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=asana) set up
- [See all teams](https://developer.moveworks.com/creator-studio/resources/plugin?id=asana-view-teams) Plugin

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+create+a+project+in+Asana%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+let%27s+create+a+new+project+in+%3Cb%3EAsana%3C%2Fb%3E.++What+would+you+like+to+name+the+project%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Project+Phoenix%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Got+it.+And+which+team+should+this+project+belong+to%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+Marketing+Team%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+and+what+is+the+due+date%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22December+31%2C+2024%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27m+ready+to+create+the+%3Cstrong%3EProject+Phoenix%3C%2Fstrong%3E+project.%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EProject+Name%3C%2Fstrong%3E%3A+Project+Phoenix%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ETeam%3C%2Fstrong%3E%3A+Marketing+Team%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EDue+Date%3C%2Fstrong%3E%3A+December+31%2C+2024%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3EDoes+this+look+right%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Confirm%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+creating+the+project...%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+project+in+Asana...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I%27ve+created+the+%5C%22Project+Phoenix%5C%22+project+in+Asana%21%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Project+Phoenix%22%2C%22connectorName%22%3A%22asana%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we do recommend that you create a connector in Agent Studio before installing this plugin to streamline the process. Please follow our **Asana Connector Guide** to do so. Once you have done this, simply follow our plugin installation documentation to get your plugin installed in minutes. For **Create Project**, you will also need to add the following permissions:

**Permissions Needed:**

- `projects:create` – Allows the user to create new projects

After you have configured the connector, please refer to our installation documentation for more information on how to install a plugin.

# Customization Options

In the **Create Project** plugin, users can define the following parameters for the new project:

- **Name**: The name of the project (required).
- **Due Date**: The due date for the project (optional).
- **Privacy Setting**: Defines the visibility of the project. Options include:
    - `private`: Only accessible by invited members.
    - `public`: Accessible by all members of the workspace.
- **Start Date**: The starting date of the project (optional).
- **Default Access Level**: The default access level for the project, such as `commenter` (optional).
- **Minimum Access Level for Customization**: The minimum access level required to customize the project (optional).
- **Minimum Access Level for Sharing**: The minimum access level required to share the project (optional).
- **Team**: The GID of the team to which the project will be assigned (required).
- **Workspace**: The GID of the workspace where the project will be created (required).
- **Color**: The color for the project (optional). Options include predefined color values like `light-warm-gray`.

For a comprehensive list of other fields and options that can be configured while creating a project, please refer to the official [Create a Project](https://developers.asana.com/reference/createproject) API documentation. This will give you a detailed overview of all the customizable fields and their usage.

# Appendix

The [Create a Project](https://developers.asana.com/reference/createproject) API allows creating a new project in Asana. You can define the project name, description, team, and other important details during project creation.

```bash
curl --request POST \
     --url https://app.asana.com/api/1.0/projects \
     --header 'accept: application/json' \
     --header 'authorization: Bearer {{personal_access_token}}' \
     --header 'content-type: application/json' \
     --data '{
               "data": {
                   "name": "New Project Name",
                   "team": "{{team_gid}}",
                   "notes": "This is the description of the new project.",
                   "workspace": "{{workspace_gid}}"
               }
             }'
```

**Required Body Parameters:**

- `name`: The name of the project.
- `team`: The GID of the team to which the project will be assigned.
- `workspace`: The GID of the workspace where the project will be created.

**Optional Body Parameters:**

- `notes`: A description for the project (optional).
- `assignee`: The user ID of the person assigned to the project (optional).
- `due_on`: The due date for the project (optional).

###