---
availability: INSTALLABLE
description: This plugin provides detailed attendance reports for your Zoom meetings,
  including invitees, participants, participant join and leave times, and other key
  engagement metrics.
installation_asset_uuid: 5ab69977-377d-4c13-a89f-eacb8d6a2d3b
name: Lookup Attendance Report for a meeting
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hi%2C+can+you+get+me+the+attendance+report+for+a+meeting%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Of+course%21+Would+you+like+to+specify+the+meeting+by+name+or+by+date+range%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22By+date+range%2C+please.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Alright.+Please+provide+the+start+and+end+dates+for+the+range+you%27re+interested+in.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Let%27s+go+from+October+1st%2C+2023+to+October+7th%2C+2023.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+the+meetings+scheduled+between+October+1st+and+October+7th%3A%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3E%3Cb%3EProject+Update%3C%2Fb%3E+on+October+2nd%2C+2023%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ETeam+Sync%3C%2Fb%3E+on+October+4th%2C+2023%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EClient+Review%3C%2Fb%3E+on+October+6th%2C+2023%3C%2Fli%3E%5Cn%3C%2Fol%3E%5CnPlease+choose+the+number+of+the+meeting+you+want+the+attendance+report+for.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+the+attendance+report+for+the+%3Cb%3EProject+Update%3C%2Fb%3E+meeting%2C+which+is+option+1.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You+selected+the+%3Cb%3EProject+Update%3C%2Fb%3E+meeting+on+October+2nd%2C+2023.+Is+that+correct%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+that%27s+correct.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Calling+Zoom+API+to+get+attendance+report%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+attendance+report+for+the+Zoom+meeting+%3Cb%3EProject+Update%3C%2Fb%3E+on+October+2nd%2C+2023+has+been+successfully+generated.+Here+are+the+updated+details%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%5Cn++%3Cli%3E%3Cb%3EAbsentee+Percentage%3A%3C%2Fb%3E+50%25+of+the+invitees+did+not+attend.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EInvitees%3A%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3E%3Cb%3EInternal+Users%3A%3C%2Fb%3E+Alice+Johnson%2C+Bob+Lee%2C+Charlie+Green%2C+Daisy+White%2C+and+a+resource+calendar.%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Cb%3EExternal+User%3A%3C%2Fb%3E+John+Blue+from+example.com.%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EParticipants%3A%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3E%3Cb%3EBob+Lee%3A%3C%2Fb%3E+Joined+at+09%3A22%3A35+and+left+at+09%3A54%3A50%2C+duration+approximately+32+minutes.%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Cb%3ECharlie+Green%3A%3C%2Fb%3E+Joined+at+09%3A29%3A51+and+left+at+09%3A52%3A36%2C+duration+approximately+23+minutes.%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn%3C%2Ful%3E%5CnIf+you+need+further+assistance+or+details%2C+feel+free+to+ask%21%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Project+Update+Attendance+Report%22%2C%22connectorName%22%3A%22zoom%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Thank+you%21%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You%27re+welcome%21+If+you+have+any+more+questions%2C+just+let+me+know.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
systems:
- zoom
---

# Introduction

The **Get Attendance Report for a Meeting** plugin allows your users to view detailed attendance reports of scheduled meetings directly through the Moveworks AI Assistant. Users can easily access information such as participant names, join and leave times, and attendance duration—all within their chat interface. This ensures streamlined access to attendance data and helps in tracking meeting engagement and participation.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- [Zoom Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=zoom&commit_id=280a6873f0354f3c7bd834c823295c3af2fc7086) set up in Creator Studio
- View Zoom Meetings Plugin

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hi%2C+can+you+get+me+the+attendance+report+for+a+meeting%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Of+course%21+Would+you+like+to+specify+the+meeting+by+name+or+by+date+range%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22By+date+range%2C+please.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Alright.+Please+provide+the+start+and+end+dates+for+the+range+you%27re+interested+in.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Let%27s+go+from+October+1st%2C+2023+to+October+7th%2C+2023.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+the+meetings+scheduled+between+October+1st+and+October+7th%3A%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3E%3Cb%3EProject+Update%3C%2Fb%3E+on+October+2nd%2C+2023%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ETeam+Sync%3C%2Fb%3E+on+October+4th%2C+2023%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EClient+Review%3C%2Fb%3E+on+October+6th%2C+2023%3C%2Fli%3E%5Cn%3C%2Fol%3E%5CnPlease+choose+the+number+of+the+meeting+you+want+the+attendance+report+for.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+the+attendance+report+for+the+%3Cb%3EProject+Update%3C%2Fb%3E+meeting%2C+which+is+option+1.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You+selected+the+%3Cb%3EProject+Update%3C%2Fb%3E+meeting+on+October+2nd%2C+2023.+Is+that+correct%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+that%27s+correct.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Calling+Zoom+API+to+get+attendance+report%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+attendance+report+for+the+Zoom+meeting+%3Cb%3EProject+Update%3C%2Fb%3E+on+October+2nd%2C+2023+has+been+successfully+generated.+Here+are+the+updated+details%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%5Cn++%3Cli%3E%3Cb%3EAbsentee+Percentage%3A%3C%2Fb%3E+50%25+of+the+invitees+did+not+attend.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EInvitees%3A%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3E%3Cb%3EInternal+Users%3A%3C%2Fb%3E+Alice+Johnson%2C+Bob+Lee%2C+Charlie+Green%2C+Daisy+White%2C+and+a+resource+calendar.%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Cb%3EExternal+User%3A%3C%2Fb%3E+John+Blue+from+example.com.%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EParticipants%3A%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3E%3Cb%3EBob+Lee%3A%3C%2Fb%3E+Joined+at+09%3A22%3A35+and+left+at+09%3A54%3A50%2C+duration+approximately+32+minutes.%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Cb%3ECharlie+Green%3A%3C%2Fb%3E+Joined+at+09%3A29%3A51+and+left+at+09%3A52%3A36%2C+duration+approximately+23+minutes.%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn%3C%2Ful%3E%5CnIf+you+need+further+assistance+or+details%2C+feel+free+to+ask%21%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Project+Update+Attendance+Report%22%2C%22connectorName%22%3A%22zoom%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Thank+you%21%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You%27re+welcome%21+If+you+have+any+more+questions%2C+just+let+me+know.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we do recommend that you create a connector in Agent Studio before installing this plugin to streamline the process. Please follow our Zoom **Connector Guide** to do so. Once you have done this, simply follow our plugin installation documentation to get your plugin installed in minutes.

**Scopes Needed:**

- `meeting:read:list_past_participants:admin`
- `meeting:read:meeting:admin`
- `user:read:user:admin`
- For more information : [https://developers.zoom.us/docs/integrations/oauth-scopes-overview/](https://developers.zoom.us/docs/integrations/oauth-scopes-overview/)

# Appendix

## A combination of 2 APIs makes this possible:

- This API is used for retrieving the details of meeting invitees for a specific Zoom meeting. It allows you to access information about the participants invited to a meeting using the meeting's unique identifier.
    
    ```bash
    curl -X GET "https://api.zoom.us/v2/meetings/{{meeting_id}}" \
         --header "accept: application/json" \
         --header "authorization: Bearer {{personal_access_token}}" \
         --header "content-type: application/json"
    ```
    
    - Required parameters:
        - **`meeting_id`**: The unique identifier for the Zoom meeting whose invitees you are trying to retrieve. This must be replaced with the actual ID of the meeting you wish to inquire about.
- This API is used to retrieve the list of actual participants who attended a past Zoom meeting. It provides details on who participated in the meeting, including information like names, email addresses, join times, and leave times.
    
    ```bash
    curl -X GET "https://api.zoom.us/v2/past_meetings/{{meeting_Id}}/participants" \
         --header "accept: application/json" \
         --header "authorization: Bearer {{personal_access_token}}" \
         --header "content-type: application/json"
    ```
    
    - Required parameters:
        - **`meeting_Id`**: The unique identifier for a past Zoom meeting whose participant details you wish to retrieve. This ID corresponds to the specific meeting's recorded session.