---
availability: INSTALLABLE
description: A plugin that allows the user to fetch q/a of it's zoom meetings.
installation_asset_uuid: 5eea3db0-9326-48fb-9c5e-f610c58b7919
name: Lookup Q/A of a meeting
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+the+q%26a+of+my+meetings+last+week.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hello%21+Here+are+your+recorded+Gong+meetings%3A%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3ETeam+Sync+-+%5BOct+25%2C+2023%2C+10%3A00+AM%5D%3C%2Fli%3E%5Cn++%3Cli%3EClient+Update+-+%5BOct+24%2C+2023%2C+2%3A00+PM%5D%3C%2Fli%3E%5Cn++%3Cli%3EProject+Kickoff+-+%5BOct+23%2C+2023%2C+3%3A00+PM%5D%3C%2Fli%3E%5Cn%3C%2Fol%3E%5CnPlease+type+the+number+of+the+meeting+you%27d+like+to+get+the+Q%26A+for.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Ccode%3E1%3C%2Fcode%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You+selected%3A+%3Cb%3ETeam+Sync%3C%2Fb%3E+-+%5BOct+25%2C+2023%2C+10%3A00+AM%5D+Is+this+correct%3F+%28yes%2Fno%29%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Ccode%3Eyes%3C%2Fcode%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Great%21+Here+are+the+Q%26A+details+for+the+%3Cb%3ETeam+Sync%3C%2Fb%3E+meeting%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cb%3EQ1%3A%3C%2Fb%3E+What+is+the+timeline+for+project+completion%3F%3Cbr%3E%5Cn%3Cb%3EA1%3A%3C%2Fb%3E+The+project+is+expected+to+be+completed+by+December+31%2C+2023.%3C%2Fp%3E%5Cn%3Cp%3E%3Cb%3EQ2%3A%3C%2Fb%3E+Who+will+be+the+primary+contact+for+the+budget+proposal%3F%3Cbr%3E%5Cn%3Cb%3EA2%3A%3C%2Fb%3E+John+will+be+the+primary+contact+for+the+budget+proposal.%3C%2Fp%3E%5Cn%3Cp%3E%3Cb%3EQ3%3A%3C%2Fb%3E+Are+there+any+risks+identified+for+this+phase+of+the+project%3F%3Cbr%3E%5Cn%3Cb%3EA3%3A%3C%2Fb%3E+Yes%2C+the+primary+risks+include+potential+delays+in+material+procurement.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
systems:
- zoom
---

# **Introduction**

The **Get Q&A for a Meeting** plugin allows your users to view detailed question and answer sessions from scheduled meetings directly through the Moveworks AI Assistant. Users can easily access information such as questions asked, responses provided, and participant interactions—all within their chat interface. 

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- [Zoom Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=zoom&commit_id=280a6873f0354f3c7bd834c823295c3af2fc7086) set up in Creator Studio
- View Zoom Meetings Plugin

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+the+q%26a+of+my+meetings+last+week.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hello%21+Here+are+your+recorded+Gong+meetings%3A%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3ETeam+Sync+-+%5BOct+25%2C+2023%2C+10%3A00+AM%5D%3C%2Fli%3E%5Cn++%3Cli%3EClient+Update+-+%5BOct+24%2C+2023%2C+2%3A00+PM%5D%3C%2Fli%3E%5Cn++%3Cli%3EProject+Kickoff+-+%5BOct+23%2C+2023%2C+3%3A00+PM%5D%3C%2Fli%3E%5Cn%3C%2Fol%3E%5CnPlease+type+the+number+of+the+meeting+you%27d+like+to+get+the+Q%26A+for.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Ccode%3E1%3C%2Fcode%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You+selected%3A+%3Cb%3ETeam+Sync%3C%2Fb%3E+-+%5BOct+25%2C+2023%2C+10%3A00+AM%5D+Is+this+correct%3F+%28yes%2Fno%29%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Ccode%3Eyes%3C%2Fcode%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Great%21+Here+are+the+Q%26A+details+for+the+%3Cb%3ETeam+Sync%3C%2Fb%3E+meeting%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cb%3EQ1%3A%3C%2Fb%3E+What+is+the+timeline+for+project+completion%3F%3Cbr%3E%5Cn%3Cb%3EA1%3A%3C%2Fb%3E+The+project+is+expected+to+be+completed+by+December+31%2C+2023.%3C%2Fp%3E%5Cn%3Cp%3E%3Cb%3EQ2%3A%3C%2Fb%3E+Who+will+be+the+primary+contact+for+the+budget+proposal%3F%3Cbr%3E%5Cn%3Cb%3EA2%3A%3C%2Fb%3E+John+will+be+the+primary+contact+for+the+budget+proposal.%3C%2Fp%3E%5Cn%3Cp%3E%3Cb%3EQ3%3A%3C%2Fb%3E+Are+there+any+risks+identified+for+this+phase+of+the+project%3F%3Cbr%3E%5Cn%3Cb%3EA3%3A%3C%2Fb%3E+Yes%2C+the+primary+risks+include+potential+delays+in+material+procurement.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we do recommend that you create a connector in Agent Studio before installing this plugin to streamline the process. Please follow our Zoom **Connector Guide** to do so. Once you have done this, simply follow our plugin installation documentation to get your plugin installed in minutes.

**Scopes Needed:**

- `meeting:read:past_qa:admin`
- For more information : [https://developers.zoom.us/docs/integrations/oauth-scopes-overview/](https://developers.zoom.us/docs/integrations/oauth-scopes-overview/)

# Appendix

- This API call allows you to retrieve the Q&A sessions from a specific past Zoom meeting.
    
    ```bash
    curl -X GET "https://api.zoom.us/v2/past_meetings/{{meeting_id}}/qa" \
         --header "accept: application/json" \
         --header "authorization: Bearer {{personal_access_token}}" \
         --header "content-type: application/json"
    ```
    
    - Required parameters:
        - **`meeting_id`**: The unique identifier for the past Zoom meeting whose Q&A data you want to retrieve. This parameter needs to be replaced with the actual meeting ID to query its associated Q&A sessions.