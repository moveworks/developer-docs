---
availability: INSTALLABLE
description: A plugin that allows you to lookup a meeting's summary.
installation_asset_uuid: 635ed0c9-a0f1-4604-880b-c106d9c60c87
name: Lookup Meeting Summary
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+a+recap+of+my+meetings+last+week.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hello%21+Here+are+your+recorded+Gong+meetings%3A%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3ETeam+Sync+-+%5BOct+25%2C+2023%2C+10%3A00+AM%5D%3C%2Fli%3E%5Cn++%3Cli%3EClient+Update+-+%5BOct+24%2C+2023%2C+2%3A00+PM%5D%3C%2Fli%3E%5Cn++%3Cli%3EProject+Kickoff+-+%5BOct+23%2C+2023%2C+3%3A00+PM%5D%3C%2Fli%3E%5Cn%3C%2Fol%3E%5CnPlease+type+the+number+of+the+meeting+you%27d+like+to+get+the+summary+for.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Ccode%3E1%3C%2Fcode%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22You+selected%3A+%3Cb%3ETeam+Sync%3C%2Fb%3E+-+%5BOct+25%2C+2023%2C+10%3A00+AM%5D+Is+this+correct%3F+%28yes%2Fno%29%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Ccode%3Eyes%3C%2Fcode%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Great%21+Here+is+the+summary+for+the+%3Cb%3ETeam+Sync%3C%2Fb%3E+meeting%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cb%3EMeeting+Summary%3A%3C%2Fb%3E%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cb%3EDate+and+Time%3A%3C%2Fb%3E+Oct+25%2C+2023%2C+10%3A00+AM%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EParticipants%3A%3C%2Fb%3E+John%2C+Sara%2C+Amanda%2C+Michael%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EKey+Points+Discussed%3A%3C%2Fb%3E%3Cbr%3E%5Cn++++%3Col%3E%5Cn++++++%3Cli%3EProject+timeline+and+milestone+updates.%3C%2Fli%3E%5Cn++++++%3Cli%3EBudget+proposal+and+allocation+for+the+next+quarter.%3C%2Fli%3E%5Cn++++++%3Cli%3EIdentified+risks+and+mitigation+strategies.%3C%2Fli%3E%5Cn++++++%3Cli%3ERoles+and+responsibilities+for+the+upcoming+sprint.%3C%2Fli%3E%5Cn++++%3C%2Fol%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EAction+Items%3A%3C%2Fb%3E%3Cbr%3E%5Cn++++%3Col%3E%5Cn++++++%3Cli%3EJohn+to+finalize+the+budget+proposal+by+Oct+28%2C+2023.%3C%2Fli%3E%5Cn++++++%3Cli%3ESara+to+prepare+the+draft+presentation+by+Oct+29%2C+2023.%3C%2Fli%3E%5Cn++++++%3Cli%3EAmanda+to+schedule+the+follow-up+meeting+by+Oct+30%2C+2023.%3C%2Fli%3E%5Cn++++%3C%2Fol%3E%5Cn++%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
systems:
- gong
---

# Introduction

The **See Meeting Summary in Gong** plugin allows your users to view summaries of recorded meetings directly through the Moveworks AI Assistant. Users can easily access key meeting details, including date, participants, key discussion points, and action items, all within their chat interface, ensuring streamlined information access and enhanced meeting insights.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- [Gong Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=gong) set up in Creator Studio
- View Gong meetings Plugin

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+create+a+new+task+and+assign+it+to+a+user.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.+Let%27s+gather+some+details.%5Cn%5CnWho+should+I+assign+the+task+to%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+user+%5C%22John+Doe%5C%22+in+the+system...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+2+possible+matches.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+a+couple+of+matches+for+%5C%22John+Doe.%5C%22%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22John+Doe+%28john.doe%40example.com%29%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22John+Doe+%28john.d%40example.com%29%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe+%28john.doe%40example.com%29%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Got+it.+Which+project+should+this+task+be+associated+with%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Project+Evergreen%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay.+What+should+the+task+name+be%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Design+new+homepage%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22And+when+should+this+task+be+due%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Next+Friday%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+have+the+following+details%3A%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EAssignee%3C%2Fstrong%3E%3AJohn+Doe+%28john.doe%40example.com%29%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EProject%3C%2Fstrong%3E%3A+Project+Evergreen%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ETask+Name%3C%2Fstrong%3E%3A+Design+new+homepage%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EDue+Date%3C%2Fstrong%3E%3ANext+Friday%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3ECreate+the+task%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Create+Task%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Create+Task%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22OK.+I%27ve+created+the+task.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Design+new+homepage%22%2C%22connectorName%22%3A%22asana%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

While you can create a connector during plugin installation, we do recommend that you create a connector in Agent Studio before installing this plugin to streamline the process. Please follow our Gong **Connector Guide** to do so. Once you have done this, simply follow our plugin installation documentation to get your plugin installed in minutes.

# Appendix

This API allows you to fetch the transcript of a gong call. Then the llm will convert this transcript into useful action items and next steps in a concise manner.

```bash
curl -X POST "https://us-35031.api.gong.io/v2/calls/transcript" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}" \
     --header "content-type: application/json" \
     --data '{
       "filter": {
         "callIds": ["{{callid}}"]
       }
     }'
```

**Required Body Parameters:**

- `callid` (string) - Gong Id of the call for which the transcript is needed.