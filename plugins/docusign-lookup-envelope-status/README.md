---
availability: INSTALLABLE
description: A plugin that allows a user to look up the status of an envelope that
  was sent.
installation_asset_uuid: 29f0574d-500c-4309-82e6-5fd59b9957c9
name: 'Look Up Status of an Envelope '
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+is+the+status+of+the+NDA+I+sent+to+John+Doe%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELooking+up+Docusign+Envelope%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+is+the+status+of+your+%3Cstrong%3ENDA%3C%2Fstrong%3E%3A+Here+is+your+signed+document%3Cbr%3E%5Cn-+%3Cstrong%3EStatus%3C%2Fstrong%3E%3A+Completed%3Cbr%3E%5Cn-+%3Cstrong%3ESender%3C%2Fstrong%3E%3A+James+Smith%3Cbr%3E%5Cn-+%3Cstrong%3ERecipient%3C%2Fstrong%3E%3A+John+Doe%3Cbr%3E%5Cn-+%3Cstrong%3ECreated+Date%3C%2Fstrong%3E%3A+May+26%2C+2025%2C+09%3A27+AM%3Cbr%3E%5Cn-+%3Cstrong%3ESent+Date%3C%2Fstrong%3E%3A+May+26%2C+2025%2C+09%3A28+AM%3Cbr%3E%5Cn-+%3Cstrong%3ECompleted+Date%3C%2Fstrong%3E%3A+May+26%2C+2025%2C+09%3A28+AM%3Cbr%3E%5Cn%3Cbr%3E%5CnIf+you+need+further+assistance+or+have+any+other+questions%2C+feel+free+to+ask%21%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22docusign%22%2C%22citationTitle%22%3A%22NDA%22%7D%5D%7D%5D%7D%5D%2C%22userConfig%22%3A%7B%22userName%22%3A%22%22%2C%22initials%22%3A%22U%22%2C%22color%22%3A%22%23ebeefc%22%2C%22foregroundColor%22%3A%22%233556e3%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D
solution_tags:
- Legal
systems:
- docusign
---

## Introduction

The **Look up status of an envelope** plugin allows users to seamlessly find the status of an envelope they have sent through the Moveworks AI Assistant. 

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

## Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+is+the+status+of+the+NDA+I+sent+to+John+Doe%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELooking+up+Docusign+Envelope%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+is+the+status+of+your+%3Cstrong%3ENDA%3C%2Fstrong%3E%3A+Here+is+your+signed+document%3Cbr%3E%5Cn-+%3Cstrong%3EStatus%3C%2Fstrong%3E%3A+Completed%3Cbr%3E%5Cn-+%3Cstrong%3ESender%3C%2Fstrong%3E%3A+James+Smith%3Cbr%3E%5Cn-+%3Cstrong%3ERecipient%3C%2Fstrong%3E%3A+John+Doe%3Cbr%3E%5Cn-+%3Cstrong%3ECreated+Date%3C%2Fstrong%3E%3A+May+26%2C+2025%2C+09%3A27+AM%3Cbr%3E%5Cn-+%3Cstrong%3ESent+Date%3C%2Fstrong%3E%3A+May+26%2C+2025%2C+09%3A28+AM%3Cbr%3E%5Cn-+%3Cstrong%3ECompleted+Date%3C%2Fstrong%3E%3A+May+26%2C+2025%2C+09%3A28+AM%3Cbr%3E%5Cn%3Cbr%3E%5CnIf+you+need+further+assistance+or+have+any+other+questions%2C+feel+free+to+ask%21%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22docusign%22%2C%22citationTitle%22%3A%22NDA%22%7D%5D%7D%5D%7D%5D%2C%22userConfig%22%3A%7B%22userName%22%3A%22%22%2C%22initials%22%3A%22U%22%2C%22color%22%3A%22%23ebeefc%22%2C%22foregroundColor%22%3A%22%233556e3%22%2C%22providedIcon%22%3A%22silhoutte%22%7D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Docusign first, prior to installing this plugin. Please follow the [Docusign Connector Guide](https://developer.moveworks.com/marketplace/package/?id=docusign#how-to-implement) to create the connector. Note that for **Look up envelope status**, you will also need to add the following permissions:

- DS Sender: More details [here](https://support.docusign.com/s/document-item?language=en_US&_gl=1*1jinp81*_gcl_au*MzM2MjUzNjg0LjE3NDc5ODkzNzguODAxMjkzMTMuMTc0ODI1MTA5Ni4xNzQ4MjUxMTc0&bundleId=pik1583277475390&topicId=pof1583277362435.html&_LANG=enus).

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.
