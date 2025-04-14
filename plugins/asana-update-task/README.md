---
description: A plugin that allows you to update a task status or details.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: ab689642-2c5c-4fb7-9871-31590a780d95
installation_link: https://my.moveworks.com/agent-studio/plugin-workspace/plugins?externalAssetId=e5495a05-5901-4e0f-bed4-f075ac33b1b4
name: Update a Task
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A5961%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Mark+the+task+%27Write+User+Journey%27+as+complete%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Searching+Asana+for+task+named+%27Write+User+Journey%27%27%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22I+found+the+task+in+Asana%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Task%3A+%27Write+User+Journey%27%27%22%2C%22text%22%3A%22%3Cb%3EProject%3A%3C%2Fb%3E+Personal+Tasks%3Cbr%3E%3Cb%3EDue+Date%3A%3C%2Fb%3E+12-18-2024%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Incomplete%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Mark+as+Complete%22%7D%2C%7B%22text%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D%7D%5D%7D
solution_tags:
- Productivity
- Project Management
systems:
- asana
time_in_minutes: 30
---

# Introduction

The **Update Task** plugin enables users to modify tasks in Asana directly through the Moveworks AI Assistant. Users can update task details such as name, due date, assignee, or status while ensuring compliance with project permissions.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- [Asana Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=asana) set up in Creator Studio
- The user must have permission to edit tasks in the relevant project

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A5961%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Mark+the+task+%27Write+User+Journey%27+as+complete%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Searching+Asana+for+task+named+%27Write+User+Journey%27%27%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22I+found+the+task+in+Asana%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Task%3A+%27Write+User+Journey%27%27%22%2C%22text%22%3A%22%3Cb%3EProject%3A%3C%2Fb%3E+Personal+Tasks%3Cbr%3E%3Cb%3EDue+Date%3A%3C%2Fb%3E+12-18-2024%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Incomplete%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Mark+as+Complete%22%7D%2C%7B%22text%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we do recommend that you create a connector in Agent Studio before installing this plugin to streamline the process. Please follow our **Asana Connector Guide** to do so. Once you have done this, simply follow our plugin installation documentation to get your plugin installed in minutes. For **Update Task**, you will also need to add the following permissions:

**Permissions Needed:**

- `tasks:write` – Allows modifying task attributes

After you have configured the connector, please refer to our installation documentation for more information on how to install a plugin.

# Customization Options

1. We can change the body parameters we can let the user change in the current plugin we are allowing the user to update the tasks name, due date, assignee and status. To see what can be update please refer to the API documentation [Update Task](https://developers.asana.com/reference/updatetask).

# Appendix

The [Update Task](https://developers.asana.com/reference/updatetask) API allows modifying task details such as name, due date, assignee, or status.

```bash
curl --request PUT \
     --url https://app.asana.com/api/1.0/tasks/task_gid \
     --header 'accept: application/json' \
     --header 'authorization: Bearer {personal_access_token}' \
     --header 'content-type: application/json' \
     --data '
{
  "data": {
    "name": "New Task Name",
    "completed": true
  }
}
'
```

**Optional Body Parameters:**

- `name`: The new name for the task.
- `due_on`: The new due date for the task.
- `assignee`: The user ID of the new assignee.
- `completed`: Updates the task status.