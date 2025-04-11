---
description: A plugin that allows the user to get the summary of a teams meeting.

difficulty_level: BEGINNER
fidelity: GUIDE
time_in_minutes: 30
installation_link: https://my.moveworks.com/agent-studio/plugin-workspace/plugins?externalAssetId=c8475857-98ee-417e-87c3-d42ed425991c
installation_asset_uuid: c8475857-98ee-417e-87c3-d42ed425991c
name: Get meeting summary
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHi%2C+can+you+show+me+the+summaries+of+my+past+Teams+meetings%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%21+What+would+be+the+date+range%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Let%27s+go+from+October+1st%2C+2023+to+October+7th%2C+2023.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+the+meetings+scheduled+between+October+1st+and+October+7th%3A%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3E%3Cb%3EProject+Update%3C%2Fb%3E+on+October+2nd%2C+2023%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ETeam+Sync%3C%2Fb%3E+on+October+4th%2C+2023%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EClient+Review%3C%2Fb%3E+on+October+6th%2C+2023%3C%2Fli%3E%5Cn%3C%2Fol%3E%5CnPlease+choose+the+number+of+the+meeting+you+want+the+summary+for.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+see+the+summary+for+the+%3Cb%3EProject+Update%3C%2Fb%3E+meeting%2C+which+is+option+1.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You+selected+the+%3Cb%3EProject+Update%3C%2Fb%3E+meeting+on+October+2nd%2C+2023.+Here+is+the+detailed+summary%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%5Cn++%3Cli%3E%3Cb%3EMeeting+Title%3A%3C%2Fb%3E+Project+Update%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDate+%26+Time%3A%3C%2Fb%3E+October+2nd%2C+2023%2C+09%3A00+AM+-+10%3A00+AM%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDuration%3A%3C%2Fb%3E+1+hour%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EAttendees%3A%3C%2Fb%3E+John+Doe%2C+Jane+Smith%2C+Samuel+Brown%2C+Cubbon+Park%2C+Emily+White%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ESummary%3A%3C%2Fb%3E+The+team+discussed+the+completion+of+several+project+milestones+and+reviewed+the+status+of+ongoing+tasks.+Upcoming+deadlines+were+examined%2C+and+new+responsibilities+were+assigned+to+ensure+timely+progress.+Key+achievements+and+potential+risks+were+highlighted%2C+with+a+focus+on+maintaining+momentum.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3ENext+Steps%3A%3C%2Fb%3E+The+team+should+complete+the+current+phase+tasks+by+October+10th+and+prepare+for+the+client+demo+scheduled+on+October+15th.%3C%2Fli%3E%5Cn%3C%2Ful%3E%5CnWould+you+like+to+see+the+summary+for+any+other+meetings%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22No%2C+that%27s+all%2C+thank+you%21%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You%27re+welcome%21+If+you+need+any+more+information%2C+just+let+me+know.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
systems:
- microsoft-graph

---
# Introduction

The **See Meeting Summary for Teams** plugin allows your users to view summaries of recorded meetings directly through the Moveworks AI Assistant. Users can easily access key meeting details, key discussion points, and action items, all within their chat interface, ensuring streamlined information access and enhanced meeting insights.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- [Ms Graph Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=microsoft-graph) set up in Creator Studio
- View Teams Meetings Plugin

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+create+a+new+task+and+assign+it+to+a+user.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.+Let%27s+gather+some+details.%5Cn%5CnWho+should+I+assign+the+task+to%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+user+%5C%22John+Doe%5C%22+in+the+system...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+2+possible+matches.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+a+couple+of+matches+for+%5C%22John+Doe.%5C%22%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22John+Doe+%28john.doe%40example.com%29%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22John+Doe+%28john.d%40example.com%29%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe+%28john.doe%40example.com%29%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Got+it.+Which+project+should+this+task+be+associated+with%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Project+Evergreen%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay.+What+should+the+task+name+be%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Design+new+homepage%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22And+when+should+this+task+be+due%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Next+Friday%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+have+the+following+details%3A%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EAssignee%3C%2Fstrong%3E%3AJohn+Doe+%28john.doe%40example.com%29%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EProject%3C%2Fstrong%3E%3A+Project+Evergreen%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ETask+Name%3C%2Fstrong%3E%3A+Design+new+homepage%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EDue+Date%3C%2Fstrong%3E%3ANext+Friday%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3ECreate+the+task%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Create+Task%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Create+Task%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22OK.+I%27ve+created+the+task.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Design+new+homepage%22%2C%22connectorName%22%3A%22asana%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we do recommend that you create a connector in Agent Studio before installing this plugin to streamline the process. Please follow our **Microsoft Graph Connector Guide** to do so. Once you have done this, simply follow our plugin installation documentation to get your plugin installed in minutes.

**Permissions Needed:**

- `OnlineMeetings.Read.All`
- `OnlineMeetings.ReadWrite.All`
- `OnlineMeetingTranscript.Read.All`
- `OnlineMeetingArtifact.Read.All`
- `OnlineMeetingRecording.Read.All`

# Appendix

## A combination of 4 APIs makes this possible:

- The first API call is designed to fetch all the calls that a user participated in within a specified date range.
    
    ```bash
    curl -X GET "https://graph.microsoft.com/v1.0/users/{{user_email}}" \
         --header "accept: application/json" \
         --header "authorization: Bearer {{personal_access_token}}" \
         --header "content-type: application/json"
    ```
    
    - Required parameters:
        - **`user_email`**: User’s email.
- The second API call is designed to retrieve the online meeting object using join web url.
    
    ```bash
    curl -X GET "https://graph.microsoft.com/v1.0/users/{{userid}}/onlineMeetings/?$filter=JoinWebUrl eq '{{weburl}}'" \
         --header "accept: application/json" \
         --header "authorization: Bearer {{personal_access_token}}" \
         --header "content-type: application/json"
    ```
    
    - Required parameters:
        - **`userid`**: The identifier for the user to whose meeting list the query pertains.
        - **`weburl`**: The exact web URL link for the meeting, used to filter and identify the specific meeting.
- The third API is responsible for retrieving the meeting transcripts using the meeting ID obtained from the API response.
    
    ```bash
    curl -X GET "https://graph.microsoft.com/v1.0/users/{{userid}}/onlineMeetings/{{meeting_id}}/transcripts" \
         --header "accept: application/json" \
         --header "authorization: Bearer {{personal_access_token}}" \
         --header "content-type: application/json"
    ```
    
    - Required parameters:
        - **`userid`**: The identifier for the user to whose meeting list the query pertains.
        - **`meeting_id`**: Unique identifier for the meeting, obtained from the previous API's response.
- The Fourth API is responsible for retrieving the specific content of the meeting transcript using the transcript ID.
    
    ```bash
    curl -X GET "https://graph.microsoft.com/v1.0/users/{{user_id}}/onlineMeetings/{{meeting_id}}/transcripts/{{transcript_id}}/content" \
         --header "accept: application/json" \
         --header "authorization: Bearer {{personal_access_token}}" \
         --header "content-type: application/json"
    ```
    
    - Required parameters:
        - **`user_id`**: The identifier for the user to whose meeting list the query pertains.
        - **`meeting_id`**: Unique identifier for the meeting, obtained from the previous API's response.
        - **`transcript_id`**: Unique identifier for the transcript, obtained from the previous API's response.