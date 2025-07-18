---
accreditations:
- indrapaul24
- sarthaksrinivas
- DEFAULT
availability: INSTALLABLE
description: A plugin that allows employees to retrieve their time off balance from
  Workday.
design_pattern_id: 28
difficulty_level: BEGINNER
domain:
- HR - Other
- HR - Time & Absence
fidelity: TEMPLATE
installation_asset_uuid: 44d2b992-7b09-447f-bb42-e7623b646875
name: View Time Off Balance
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+how+much+balance+do+I+have%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+Natural+Language%3Cbr%3E%3Cbr%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+Query+time+off+details+for+employee%3Cbr%3E%3Cbr%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ELookup+Time+Off%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3EGet+Time+Off+Type+and+Quantity%3C%2Fb%3E%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYou+currently+have+the+following+time+off+balances%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3A+196+Hours%3Cbr%3E%5Cn2%3A+Sick+Time+Off+%28USA%29%3A+12+Days%3Cbr%3E%5Cn3%3A+Wellness+Day+%28USA%29%3A+0+Hours%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+Time+Off+Balance+in+Workday%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThanks+for+the+information%21%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Time & Absence
systems:
- workday
time_in_minutes: 20
video: https://youtu.be/2yIZoXsuc1I
---

# Introduction

The **View Time Off Balance** plugin empowers employees to instantly check their current leave balances—such as vacation, sick or personal time—through a simple conversation with the Moveworks AI Assistant. By integrating directly with Workday's Reports-as-a-Service (RaaS), this plugin delivers real-time, personalized time off balance information without requiring users to navigate complex HR systems or leave their chat interface.

This guide will walk you through how to call RaaS from Agent Studio and seamlessly integrate the **View Time Off Balance** plugin into your Moveworks experience.

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+how+much+balance+do+I+have%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+Natural+Language%3Cbr%3E%3Cbr%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+Query+time+off+details+for+employee%3Cbr%3E%3Cbr%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ELookup+Time+Off%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3EGet+Time+Off+Type+and+Quantity%3C%2Fb%3E%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYou+currently+have+the+following+time+off+balances%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3A+196+Hours%3Cbr%3E%5Cn2%3A+Sick+Time+Off+%28USA%29%3A+12+Days%3Cbr%3E%5Cn3%3A+Wellness+Day+%28USA%29%3A+0+Hours%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+Time+Off+Balance+in+Workday%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThanks+for+the+information%21%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Workday first, prior to installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=workday) guide to create the connector. 

**Note**: For **View Time Off Balance** functionality, you will need to also add the following permissions (the connector guide will walk you through how to add domain permissions): 

- Assign `Worker Data: Leave of Absence`, `Worker Data: Time Off`, `Worker Data: Time Off(Time Off Balances)` and `Worker Data: Time Off(Time Off Balances Manager View)` domain permissions with both **View** and **Get** permissions access.

Once the connector is configured, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### API #1: Get worker details

Query the [Worker API](https://community.workday.com/sites/default/files/file-hosting/restapi/index.html#common/v1/get-/workers) to fetch an employees unique ID.

**Query Parameters :**

- Key ( **search** ) : Value ( **{{first_name}}** )

### API #2: Fetch Time Off Balance

The [Absence Balances](https://community.workday.com/sites/default/files/file-hosting/restapi/index.html#absenceManagement/v2/get-/balances) API in Workday allows you to fetch real-time leave balance details (e.g., vacation, sick) for a specified worker.