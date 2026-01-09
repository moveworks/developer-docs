---
availability: INSTALLABLE
description: A plugin that allows the user to view historical teams meetings by date.
installation_asset_uuid: 0f6252b2-253f-48c4-9240-1db6cfb7e527
name: Lookup Teams Meetings
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+show+me+my+Teams+meetings+from+last+month%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFetching+your+Teams+meetings+from+March+1%2C+2025%2C+to+April+1%2C+2025...%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+your+Teams+meetings%3A%26nbsp%3B%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E1.+%3Cstrong%3ETeam+Sync%3C%2Fstrong%3E+-+March+5%2C+2025%2C+10%3A00+AM+%28Duration%3A+1+hour%29+%3Cbr%3E%5Cn2.+%3Cstrong%3EProject+Planning%3C%2Fstrong%3E+-+March+14%2C+2025%2C+2%3A00+PM+%28Duration%3A+45+minutes%29+%3Cbr%3E%5Cn3.+%3Cstrong%3EClient+Update%3C%2Fstrong%3E+-+March+20%2C+2025%2C+11%3A30+AM+%28Duration%3A+30+minutes%29%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
systems:
- microsoft-graph
---

# Introduction

The **View Teams Meetings** plugin enables users to effortlessly access their past Teams meeting records directly through the Moveworks AI Assistant. Users can quickly retrieve essential meeting details such as titles, dates, durations, and more, all within their chat interface. This ensures a streamlined process for reviewing and managing past meetings with enhanced efficiency.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- [Ms Graph Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=microsoft-graph) set up in Creator Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+show+me+my+Teams+meetings+from+last+month%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFetching+your+Teams+meetings+from+March+1%2C+2025%2C+to+April+1%2C+2025...%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+your+Teams+meetings%3A%26nbsp%3B%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E1.+%3Cstrong%3ETeam+Sync%3C%2Fstrong%3E+-+March+5%2C+2025%2C+10%3A00+AM+%28Duration%3A+1+hour%29+%3Cbr%3E%5Cn2.+%3Cstrong%3EProject+Planning%3C%2Fstrong%3E+-+March+14%2C+2025%2C+2%3A00+PM+%28Duration%3A+45+minutes%29+%3Cbr%3E%5Cn3.+%3Cstrong%3EClient+Update%3C%2Fstrong%3E+-+March+20%2C+2025%2C+11%3A30+AM+%28Duration%3A+30+minutes%29%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we do recommend that you create a connector in Agent Studio before installing this plugin to streamline the process. Please follow our **Microsoft Graph Connector Guide** to do so. Once you have done this, simply follow our plugin installation documentation to get your plugin installed in minutes.

**Permissions Needed:**

- `User.Read`
- `User.Read.All`
- `Calendars.Read`
- `Calendars.ReadWrite`
- `CallRecords.Read.All`

# Appendix

- This API call fetches detailed information about a user identified by their email address.
    
    ```bash
    curl -X GET "https://graph.microsoft.com/v1.0/users/{{email}}" \
         --header "accept: application/json" \
         --header "authorization: Bearer {{personal_access_token}}" \
         --header "content-type: application/json"
    ```
    
    - Required parameters:
        - **`email`**: The email address of the user whose details you want to retrieve. Replace **`{{email}}`** with the actual email address. This email would be obtained from the meta_data of the user using the plugin.
- This API call fetches calendar events for a specified user over a given date range.
    
    ```bash
    curl -X GET "https://graph.microsoft.com/v1.0/users/{{userid}}/events?$filter=start/dateTime ge '{{from_date}}' and end/dateTime le '{{to_date}}'" \
         --header "accept: application/json" \
         --header "authorization: Bearer {{personal_access_token}}" \
         --header "content-type: application/json"
    ```
    
    - Required parameters:
        - **`userid`**: The unique identifier of the user whose calendar events you wish to retrieve. This is obtained from the result of the previous api.
        - **`from_date`**: The start date-time in **`YYYY-MM-DDTHH:MM:SSZ`** format (or compatible format for your timezone) to filter events that occur on or after this date.
        - **`to_date`**: The end date-time in **`YYYY-MM-DDTHH:MM:SSZ`** format (or compatible format for your timezone) to filter events that occur on or before this date.