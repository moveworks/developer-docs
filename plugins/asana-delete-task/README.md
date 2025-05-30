---
description: A plugin that allows you to delete a task in asana.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: c2ba8ffa-f918-4225-9074-48daf261c658
installation_link: https://my.moveworks.com/agent-studio/plugin-workspace/plugins?externalAssetId=12b2cf36-e78a-482e-850c-817845fd0a89
name: Delete a task
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?purple_chat_v1=%7B%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+want+to+delete+the+Asana+task+titled+%27Quarterly+Budget+Review%27.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Searches+Asana+for+the+task+%27Quarterly+Budget+Review%27%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Are+you+sure+you+want+to+delete+the+%27Quarterly+Budget+Review%27+task+in+Asana%3F%22%2C%22cards%22%3A%5B%7B%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Confirm+Deletion%22%7D%5D%7D%5D%7D%5D%2C%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43%2BAM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%7D
solution_tags:
- Productivity
- Project Management
systems:
- asana
time_in_minutes: 30
---

# Introduction

The **Delete Task Plugin** allows authorized users to remove tasks from Asana directly through the Moveworks AI Assistant. This ensures quick task management while maintaining compliance with your company’s policies.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- [Asana Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=asana) set up in Creator Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A8283%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+want+to+delete+the+Asana+task+titled+%27Quarterly+Budget+Review%27.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Searches+Asana+for+the+task+%27Quarterly+Budget+Review%27%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Are+you+sure+you+want+to+delete+the+%27Quarterly+Budget+Review%27+task+in+Asana%3F%22%2C%22cards%22%3A%5B%7B%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Confirm+Deletion%22%7D%5D%7D%5D%7D%5D%2C%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43%2BAM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%7D%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our **Asana Connector Guide** to do so. Once completed, follow our plugin installation documentation to install the **Asana Get Tasks from Project** plugin in minutes.

For **Asana Get Tasks from Project**, you will also need to add the following permissions:

**Required Scopes:**

- `tasks:delete` - To Delete tasks in Asana

After you have configured the connector, please refer to our installation documentation for more information on how to install a plugin.

# Appendix

The [Delete a task](https://developers.asana.com/reference/deletetask) API allows you to delete a task by its GID

```bash
curl --request DELETE \
     --url https://app.asana.com/api/1.0/tasks/{{task_gid}} \
     --header 'accept: application/json' \
     --header 'authorization: Bearer {{personal_access_token}}'
```

**Path Parameters:**

- `task_gid` (string) – The unique identifier (GID) of the task to be deleted.

This should return an empty object on success.
