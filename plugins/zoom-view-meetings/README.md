---
availability: INSTALLABLE
description: A plugin allows users to filter and view their historical Zoom meetings
  by date.
installation_asset_uuid: fe3c8684-3729-4b62-b211-d5f958324a03
name: Lookup Zoom Meetings
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+my+Zoom+meetings+from+last+month%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Fetching+your+Zoom+meetings+from+March+1%2C+2025%2C+to+April+1%2C+2025...%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+your+past+Zoom+meetings%3A%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1.+%3Cstrong%3ETeam+Sync%3C%2Fstrong%3E+-+March+5%2C+2025%2C+10%3A00+AM+%28Duration%3A+1+hour%29+%3Cbr%3E%5Cn2.+%3Cstrong%3EProject+Planning%3C%2Fstrong%3E+-+March+14%2C+2025%2C+2%3A00+PM+%28Duration%3A+45+minutes%29+%3Cbr%3E%5Cn3.+%3Cstrong%3EClient+Update%3C%2Fstrong%3E+-+March+20%2C+2025%2C+11%3A30+AM+%28Duration%3A+30+minutes%29%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
systems:
- zoom
---

# Introduction

The **View Zoom Meetings** plugin enables users to effortlessly access their past Zoom meeting records directly through the Moveworks AI Assistant. Users can quickly retrieve essential meeting details such as titles, dates, durations, and more, all within their chat interface. This ensures a streamlined process for reviewing and managing past meetings with enhanced efficiency.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- [Zoom Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=zoom&commit_id=280a6873f0354f3c7bd834c823295c3af2fc7086) set up in Creator Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+my+Zoom+meetings+from+last+month%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Fetching+your+Zoom+meetings+from+March+1%2C+2025%2C+to+April+1%2C+2025...%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+your+past+Zoom+meetings%3A%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1.+%3Cstrong%3ETeam+Sync%3C%2Fstrong%3E+-+March+5%2C+2025%2C+10%3A00+AM+%28Duration%3A+1+hour%29+%3Cbr%3E%5Cn2.+%3Cstrong%3EProject+Planning%3C%2Fstrong%3E+-+March+14%2C+2025%2C+2%3A00+PM+%28Duration%3A+45+minutes%29+%3Cbr%3E%5Cn3.+%3Cstrong%3EClient+Update%3C%2Fstrong%3E+-+March+20%2C+2025%2C+11%3A30+AM+%28Duration%3A+30+minutes%29%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we do recommend that you create a connector in Agent Studio before installing this plugin to streamline the process. Please follow our Zoom **Connector Guide** to do so. Once you have done this, simply follow our plugin installation documentation to get your plugin installed in minutes.

**Scopes Needed:**

- `user:read:user:admin`
- `meeting:read:list_meetings:admin`
- For more information : [https://developers.zoom.us/docs/integrations/oauth-scopes-overview/](https://developers.zoom.us/docs/integrations/oauth-scopes-overview/)

# Appendix

- This API call retrieves a report of Zoom meetings that a specific user, identified by their email address, has participated in within a specified date range.
    
    ```bash
    curl -X GET "https://api.zoom.us/v2/report/users/{{email}}/meetings?from={{from_date}}&to={{to_date}}&type=pastJoined&page_size=300" \
         --header "accept: application/json" \
         --header "authorization: Bearer {{personal_access_token}}" \
         --header "content-type: application/json"
    ```
    
    - Required parameters:
        - **`email`**: The email address of the user whose meetings you want to retrieve. Replace **`{{email}}`** with the actual email address.
        - **`from`**: The start date for the report in **`YYYY-MM-DD`** format, specifying the beginning of the date range. Replace **`{{from_date}}`** with the appropriate start date.
        - **`to`**: The end date for the report in **`YYYY-MM-DD`** format, specifying the end of the date range. Replace **`{{to_date}}`** with the appropriate end date.
        - **`type`**: Set to **`pastJoined`** to filter and retrieve meetings that the user has joined in the past.
        - **`page_size`**: The number of records returned per API call. In this case, it's set to **`300`** to retrieve up to 300 meetings per request.