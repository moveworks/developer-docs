---
description: A plugin that allows you get all the tasks from a project.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: 51cd18fd-f659-4e47-b006-86943b6ab24e
installation_link: https://my.moveworks.com/agent-studio/plugin-workspace/plugins?externalAssetId=d75da91a-6480-4957-9df8-95f9a91ad51d
name: Get tasks from a project
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6438%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Show+me+all+tasks+for+the+Moveworks+Project.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Searches+Asana+for+tasks+within+the+%27Moveworks+Project%27%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Here+are+the+tasks+found+in+Asana+for+the+Moveworks+Project%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Task+1%3A+Finalize+design+specs%22%2C%22text%22%3A%22Due+Date%3A+2024-12-15%3Cbr%3EStatus%3A+In+Progress%22%7D%2C%7B%22title%22%3A%22Task+2%3A+Update+documentation%22%2C%22text%22%3A%22Due+Date%3A+2024-12-18%3Cbr%3EStatus%3A+Not+Started%22%7D%2C%7B%22title%22%3A%22Task+3%3A+Client+feedback+meeting%22%2C%22text%22%3A%22Due+Date%3A+2024-12-20%3Cbr%3EStatus%3A+Completed%22%7D%5D%7D%5D%7D%7D%5D%7D
solution_tags:
- Productivity
- Project Management
systems:
- asana
time_in_minutes: 30
---

# Introduction

The **Asana Get Tasks from Project** plugin allows users to retrieve task lists from an Asana project directly through the Moveworks AI Assistant. With this plugin, users can quickly access task details such as due dates, assignees, and statuses without leaving their workflow.

This guide will help you install and configure the plugin in **Agent Studio** within minutes. Let’s get started!

# Prerequisites

- Access to Agent Studio
- [Asana Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=asana) built in Creator Studio (follow the Asana Authentication guide to create your connector)
- [Get a List of my Projects](https://developer.moveworks.com/creator-studio/resources/plugin?id=asana-list-projects) Plugin

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6438%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Show+me+all+tasks+for+the+Moveworks+Project.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Searches+Asana+for+tasks+within+the+%27Moveworks+Project%27%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Here+are+the+tasks+found+in+Asana+for+the+Moveworks+Project%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Task+1%3A+Finalize+design+specs%22%2C%22text%22%3A%22Due+Date%3A+2024-12-15%3Cbr%3EStatus%3A+In+Progress%22%7D%2C%7B%22title%22%3A%22Task+2%3A+Update+documentation%22%2C%22text%22%3A%22Due+Date%3A+2024-12-18%3Cbr%3EStatus%3A+Not+Started%22%7D%2C%7B%22title%22%3A%22Task+3%3A+Client+feedback+meeting%22%2C%22text%22%3A%22Due+Date%3A+2024-12-20%3Cbr%3EStatus%3A+Completed%22%7D%5D%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our **Asana Connector Guide** to do so. Once completed, follow our plugin installation documentation to install the **Asana Get Tasks from Project** plugin in minutes.

For **Asana Get Tasks from Project**, you will also need to add the following permissions:

**Required Scopes:**

- `tasks:read` – Allows reading task details from a project

After configuring the connector, refer to our installation documentation for more details on completing the setup.

# Appendix

### **API #1: Get Tasks from a Project**

The [Get tasks from a project](https://developers.asana.com/reference/gettasksforproject) API retrieves a list of tasks within a specific Asana project.

```bash

curl --request GET \
     --url https://app.asana.com/api/1.0/projects/{{project_gid}}/tasks \
     --header 'accept: application/json'
```

**Path Parameters:**

- `project_gid` (string) – The globally unique identifier (GID) of the project whose tasks you want to retrieve. This would be provided from the [Get a List of my Projects](https://developer.moveworks.com/creator-studio/resources/plugin?id=asana-list-projects) Plugin.

**Query Parameters (Optional):**

- `opt_fields` (string) – Specify additional fields to include in the response, such as `name`, `assignee`, `due_date`, etc.