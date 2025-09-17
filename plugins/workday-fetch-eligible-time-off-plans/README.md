---
availability: VALIDATED
description: A plugin that allows employees to securely access and retrieve their
  eligible time off plans based on their Workday profile.
difficulty_level: BEGINNER
domain:
- HR - Other
- HR - Time & Absence
fidelity: GUIDE
installation_asset_uuid: faf5ea87-0989-4bb1-9aed-7a680a4e9cf7
installation_link: https://my.moveworks.com/agent-studio/plugin-workspace/plugins?externalAssetId=37e61096-bd69-41f1-8864-de0b36463b0d
name: "Look up User\u2019s Time Off Eligibility"
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+the+available+time+off+plans%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Authenticating+to+Workday...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Retrieving+time+off+plans...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+process+to+retrieve+your+available+time+off+plans+is+currently+ongoing.+I%27ll+update+you+as+soon+as+I+have+more+information.%3Cbr%3E%5Cn%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3EHere+are+your+available+time+off+plans%3A%3C%2Fp%3E%5Cn%3Col%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFBereavement+Leave%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFEducation%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFEmergency+Leave%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFExtended+Bereavement+Leave%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFExtended+Jury+Duty+%2F+Court+Subpoena%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFFloating+Holiday+%28Hours%29+-+8+hours%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFHealth+Condition+%2F+Third+Party+Sick+Pay%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFInjury+at+Work%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFJury+Duty%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFMilitary+Service%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFPaid+Time+Off+Adjustment+%28Hours%29+-+8+hours%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFPersonal+Leave-Less+Than+3+Months%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFPersonal+Leave-More+Than+3+Months%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFPlanned+Leave%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFSick+%28Hours%29+-+8+hours%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFTime+Off%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFUSA+Long+Term+Disability%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFUSA+Short+Term+Disability%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFVacation+%28Hours%29+-+8+hours%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+time+off+plans+in+Workday%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Time & Absence
systems:
- workday
time_in_minutes: 30
---

# Introduction

The **View Eligible Time Off Plans** plugin simplifies this process by allowing users to instantly retrieve their available leave options through a conversational interaction with the Moveworks AI Assistant. By leveraging Workday’s Reports-as-a-Service (RaaS), this plugin ensures employees get real-time access to accurate, personalized time off information — without ever leaving the chat.

This guide will walk you through how to call RaaS from Agent Studio and integrate this plugin into your Moveworks experience.

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+the+available+time+off+plans%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Authenticating+to+Workday...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Retrieving+time+off+plans...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+process+to+retrieve+your+available+time+off+plans+is+currently+ongoing.+I%27ll+update+you+as+soon+as+I+have+more+information.%3Cbr%3E%5Cn%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3EHere+are+your+available+time+off+plans%3A%3C%2Fp%3E%5Cn%3Col%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFBereavement+Leave%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFEducation%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFEmergency+Leave%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFExtended+Bereavement+Leave%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFExtended+Jury+Duty+%2F+Court+Subpoena%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFFloating+Holiday+%28Hours%29+-+8+hours%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFHealth+Condition+%2F+Third+Party+Sick+Pay%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFInjury+at+Work%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BFJury+Duty%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFMilitary+Service%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFPaid+Time+Off+Adjustment+%28Hours%29+-+8+hours%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFPersonal+Leave-Less+Than+3+Months%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFPersonal+Leave-More+Than+3+Months%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFPlanned+Leave%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFSick+%28Hours%29+-+8+hours%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFTime+Off%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFUSA+Long+Term+Disability%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFUSA+Short+Term+Disability%3C%2Fli%3E%5Cn++%3Cli%3E%EF%BB%BF%EF%BB%BF%EF%BB%BF%EF%BB%BFVacation+%28Hours%29+-+8+hours%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+time+off+plans+in+Workday%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Workday first, prior to installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=workday) guide to create the connector. 

**Note**: For **View Eligible Time Off Plans** functionality, you will need to also add the following permissions (the connector guide will walk you through how to add domain permissions): 

- Assign `Staffing` and `Time Off and Leave` domain permissions with both **View** and **Get** permissions access.

Once the connector is configured, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### API #1: Get worker details

Query the [Worker API](https://community.workday.com/sites/default/files/file-hosting/restapi/index.html#common/v1/get-/workers) to fetch an employees unique ID.

**Query Parameters :**

- Key ( **search** ) : Value ( **{{first_name}}** )

### API #2: Fetch Eligible Absence Types

The [Eligible Absence Types](https://community.workday.com/sites/default/files/file-hosting/restapi/index.html#absenceManagement/v2/get-/workers/-ID-/eligibleAbsenceTypes) API in Workday allows you to retrieve all the eligible absence types for the specified worker ID for a category type.