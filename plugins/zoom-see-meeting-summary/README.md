---
availability: INSTALLABLE
description: A plugin that allows users to view summaries of their past Zoom meetings.
difficulty_level: BEGINNER
domain:
- Productivity
fidelity: TEMPLATE
installation_asset_uuid: d9efd1f7-347d-47e6-86ac-d3efa09d5a01
name: Lookup meeting summary
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hi%2C+can+you+show+me+the+summaries+of+my+past+Zoom+meetings%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%21+Would+you+like+to+view+the+summaries+for+meetings+by+name+or+by+date+range%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22By+date+range%2C+please.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Alright.+Please+provide+the+start+and+end+dates+for+the+range+you%27re+interested+in.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Let%27s+go+from+October+1st%2C+2023+to+October+7th%2C+2023.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+the+meetings+scheduled+between+October+1st+and+October+7th%3A%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3E%3Cb%3EProject+Update%3C%2Fb%3E+on+October+2nd%2C+2023%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ETeam+Sync%3C%2Fb%3E+on+October+4th%2C+2023%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EClient+Review%3C%2Fb%3E+on+October+6th%2C+2023%3C%2Fli%3E%5Cn%3C%2Fol%3E%5CnPlease+choose+the+number+of+the+meeting+you+want+the+summary+for.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+see+the+summary+for+the+%3Cb%3EProject+Update%3C%2Fb%3E+meeting%2C+which+is+option+1.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You+selected+the+%3Cb%3EProject+Update%3C%2Fb%3E+meeting+on+October+2nd%2C+2023.+Here+is+the+detailed+summary%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%5Cn++%3Cli%3E%3Cb%3EMeeting+Title%3A%3C%2Fb%3E+Project+Update%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDate+%26+Time%3A%3C%2Fb%3E+October+2nd%2C+2023%2C+09%3A00+AM+-+10%3A00+AM%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDuration%3A%3C%2Fb%3E+1+hour%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EAttendees%3A%3C%2Fb%3E+John+Doe%2C+Jane+Smith%2C+Samuel+Brown%2C+Cubbon+Park%2C+Emily+White%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ESummary%3A%3C%2Fb%3E+The+team+discussed+the+completion+of+several+project+milestones+and+reviewed+the+status+of+ongoing+tasks.+Upcoming+deadlines+were+examined%2C+and+new+responsibilities+were+assigned+to+ensure+timely+progress.+Key+achievements+and+potential+risks+were+highlighted%2C+with+a+focus+on+maintaining+momentum.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ENext+Steps%3A%3C%2Fb%3E+The+team+should+complete+the+current+phase+tasks+by+October+10th+and+prepare+for+the+client+demo+scheduled+on+October+15th.%3C%2Fli%3E%5Cn%3C%2Ful%3E%5CnWould+you+like+to+see+the+summary+for+any+other+meetings%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22No%2C+that%27s+all%2C+thank+you%21%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You%27re+welcome%21+If+you+need+any+more+information%2C+just+let+me+know.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
systems:
- zoom
time_in_minutes: 30
---

# Introduction

The **See Meeting Summary ZOOM** plugin allows your users to view summaries of recorded meetings directly through the Moveworks AI Assistant. Users can easily access key meeting details, key discussion points, and action items, all within their chat interface, ensuring streamlined information access and enhanced meeting insights.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- [Zoom Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=zoom&commit_id=280a6873f0354f3c7bd834c823295c3af2fc7086) set up in Creator Studio
- View Zoom Meetings Plugin

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hi%2C+can+you+show+me+the+summaries+of+my+past+Zoom+meetings%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%21+Would+you+like+to+view+the+summaries+for+meetings+by+name+or+by+date+range%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22By+date+range%2C+please.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Alright.+Please+provide+the+start+and+end+dates+for+the+range+you%27re+interested+in.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Let%27s+go+from+October+1st%2C+2023+to+October+7th%2C+2023.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+the+meetings+scheduled+between+October+1st+and+October+7th%3A%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3E%3Cb%3EProject+Update%3C%2Fb%3E+on+October+2nd%2C+2023%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ETeam+Sync%3C%2Fb%3E+on+October+4th%2C+2023%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EClient+Review%3C%2Fb%3E+on+October+6th%2C+2023%3C%2Fli%3E%5Cn%3C%2Fol%3E%5CnPlease+choose+the+number+of+the+meeting+you+want+the+summary+for.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+see+the+summary+for+the+%3Cb%3EProject+Update%3C%2Fb%3E+meeting%2C+which+is+option+1.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You+selected+the+%3Cb%3EProject+Update%3C%2Fb%3E+meeting+on+October+2nd%2C+2023.+Here+is+the+detailed+summary%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%5Cn++%3Cli%3E%3Cb%3EMeeting+Title%3A%3C%2Fb%3E+Project+Update%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDate+%26+Time%3A%3C%2Fb%3E+October+2nd%2C+2023%2C+09%3A00+AM+-+10%3A00+AM%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDuration%3A%3C%2Fb%3E+1+hour%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EAttendees%3A%3C%2Fb%3E+John+Doe%2C+Jane+Smith%2C+Samuel+Brown%2C+Cubbon+Park%2C+Emily+White%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ESummary%3A%3C%2Fb%3E+The+team+discussed+the+completion+of+several+project+milestones+and+reviewed+the+status+of+ongoing+tasks.+Upcoming+deadlines+were+examined%2C+and+new+responsibilities+were+assigned+to+ensure+timely+progress.+Key+achievements+and+potential+risks+were+highlighted%2C+with+a+focus+on+maintaining+momentum.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ENext+Steps%3A%3C%2Fb%3E+The+team+should+complete+the+current+phase+tasks+by+October+10th+and+prepare+for+the+client+demo+scheduled+on+October+15th.%3C%2Fli%3E%5Cn%3C%2Ful%3E%5CnWould+you+like+to+see+the+summary+for+any+other+meetings%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22No%2C+that%27s+all%2C+thank+you%21%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You%27re+welcome%21+If+you+need+any+more+information%2C+just+let+me+know.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we do recommend that you create a connector in Agent Studio before installing this plugin to streamline the process. Please follow our Zoom **Connector Guide** to do so. Once you have done this, simply follow our plugin installation documentation to get your plugin installed in minutes.

**Scopes Needed:**

- `meeting:read:past_meeting:admin`
- `meeting:read:meeting:admin`
- `user:read:user:admin`
- `meeting:read:summary:admin`
- For more information : [https://developers.zoom.us/docs/integrations/oauth-scopes-overview/](https://developers.zoom.us/docs/integrations/oauth-scopes-overview/)

# Appendix

## A combination of 3 APIs makes this possible:

- The first API call is designed to fetch all the calls that a user participated in within a specified date range.
    
    ```bash
    curl --request GET \
      --url 'https://api.zoom.us/v2/report/users/{{user_id}}/meetings?from={{from_date}}&to={{to_date}}' \
      --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
    ```
    
    - Required parameters:
        - **`user_id`**: Unique identifier for the user whose meetings are being fetched.
        - **`from_date`**: The start date for the range within which calls should be retrieved.
        - **`to_date`**: The end date for the range within which calls should be retrieved.
- The second API call is designed to fetch the UUID of a specific meeting. This is done by using the meeting ID obtained from the response of the previous API call.
    
    ```bash
    curl --request GET \
      --url 'https://api.zoom.us/v2/past_meetings/{{meeting_id}}'\
      --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
    ```
    
    - Required parameters:
        - **`meeting_id`**: Unique identifier for the meeting whose meeting summary is being fetched. This will obtained from the above api’s response.
- The third API is responsible for retrieving the meeting summary using the UUID obtained from the previous API call.
    
    ```bash
    curl --request GET \
      --url 'https://api.zoom.us/v2/meetings/{{meeting_uuid}}/meeting_summary' \
      --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
    ```
    
    - Required parameters:
        - **`meeting_uuid`**: Unique identifier for the meeting whose meeting summary is being fetched. This will obtained from the above api’s response.