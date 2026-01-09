---
availability: INSTALLABLE
description: A plugin that provides a quick summary of an incident.
installation_asset_uuid: 298f075c-ac6b-41aa-a3d8-0fdc901fa6d1
name: Summarize an Incident
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Give+me+a+summary+of+%3Cstrong%3EINC0013956%3C%2Fstrong%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+incident+details+from+%3Cstrong%3EServiceNow%3C%2Fstrong%3E...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Analyzing+incident+data+to+provide+a+summary...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+a+summary+of+%3Cstrong%3EIncident+INC0013956%3C%2Fstrong%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Cstrong%3EIncident+Overview%3A%3C%2Fstrong%3E%5Cn%5CnThis+incident+%28%3Cstrong%3EINC0013956%3C%2Fstrong%3E%29+concerns+an+access+issue+within+the+%3Cstrong%3ESISSA%3C%2Fstrong%3E+system%2C+affecting+10+users+who+reported+the+problem+via+the+ChIP+path.+The+incident+is+currently+%27In+Progress%27+after+being+reopened+once.%5Cn%5Cn%3Cstrong%3EKey+Details%3A%3C%2Fstrong%3E%5Cn%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EImpact%3C%2Fstrong%3E%3A+Access+problem+affecting+10+users.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3C%2Fstrong%3E%3A+Currently+in+progress.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EPriority%3C%2Fstrong%3E%3A+Planning+%28Priority+5%29%2C+Low+Urgency+%28Urgency+3%29.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EResolution%3C%2Fstrong%3E%3A+Initially+resolved+by+the+caller+but+later+reopened%3B+resolution+code+indicates+%27Resolved+by+caller.%27%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EAssignment%3C%2Fstrong%3E%3A+Managed+by+the+Help+Desk+after+multiple+reassignments.%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%5CnThe+Service+Level+Agreement+%28SLA%29+requirements+for+this+incident+have+been+met.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0013956%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
- Ticketing
systems:
- servicenow
---

# Introduction

The **Summarize an Incident** plugin empowers users to efficiently gather, condense and understand details of an incident using just an incident number through Moveworks AI Assistant.

This guide will help you install and use this plugin in Agent Studio within minutes. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Give+me+a+summary+of+%3Cstrong%3EINC0013956%3C%2Fstrong%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+incident+details+from+%3Cstrong%3EServiceNow%3C%2Fstrong%3E...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Analyzing+incident+data+to+provide+a+summary...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+a+summary+of+%3Cstrong%3EIncident+INC0013956%3C%2Fstrong%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Cstrong%3EIncident+Overview%3A%3C%2Fstrong%3E%5Cn%5CnThis+incident+%28%3Cstrong%3EINC0013956%3C%2Fstrong%3E%29+concerns+an+access+issue+within+the+%3Cstrong%3ESISSA%3C%2Fstrong%3E+system%2C+affecting+10+users+who+reported+the+problem+via+the+ChIP+path.+The+incident+is+currently+%27In+Progress%27+after+being+reopened+once.%5Cn%5Cn%3Cstrong%3EKey+Details%3A%3C%2Fstrong%3E%5Cn%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EImpact%3C%2Fstrong%3E%3A+Access+problem+affecting+10+users.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3C%2Fstrong%3E%3A+Currently+in+progress.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EPriority%3C%2Fstrong%3E%3A+Planning+%28Priority+5%29%2C+Low+Urgency+%28Urgency+3%29.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EResolution%3C%2Fstrong%3E%3A+Initially+resolved+by+the+caller+but+later+reopened%3B+resolution+code+indicates+%27Resolved+by+caller.%27%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EAssignment%3C%2Fstrong%3E%3A+Managed+by+the+Help+Desk+after+multiple+reassignments.%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%5CnThe+Service+Level+Agreement+%28SLA%29+requirements+for+this+incident+have+been+met.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0013956%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for **ServiceNow** first, prior to installing this plugin. Please follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create the connector.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Customization Options

1. You can modify the API query to include additional ticket fields based on your organization’s requirements.