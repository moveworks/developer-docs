---
availability: INSTALLABLE
description: A plugin that allows an user to view past gong meetings.
installation_asset_uuid: c4e6ca33-199b-433b-992d-7f21ada9737d
name: Lookup Gong meetings
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+my+gong+meetings%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hello%21+Please+provide+a+date+range+to+view+your+recorded+Gong+meetings.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Last+weeks%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+your+Gong+meetings+from+%3Cb%3EOct+17%2C+2023%2C+to+Oct+24%2C+2023%3C%2Fb%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3EClient+Update+-+%5BRecorded%3A+Oct+24%2C+2023%2C+2%3A00+PM%5D%3C%2Fli%3E%5Cn++%3Cli%3EProject+Kickoff+-+%5BRecorded%3A+Oct+23%2C+2023%2C+3%3A00+PM%5D%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Client+Update%22%2C%22connectorName%22%3A%22gong%22%7D%2C%7B%22citationTitle%22%3A%22Project+Kickoff%22%2C%22connectorName%22%3A%22gong%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
systems:
- gong
---

# **Introduction**

The **View Gong Meetings** plugin allows your users to access and review past Gong meeting recordings and summaries directly through the Moveworks AI Assistant. Users can quickly retrieve key meeting details, including date, participants, topics discussed, and meeting links, all within their chat interface. This plugin ensures efficient access to meeting insights and enhances productivity by keeping all relevant information at the user's fingertips.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# **Prerequisites**

- Access to Agent Studio
- Gong Connector set up in Creator Studio

# **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+my+gong+meetings%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hello%21+Please+provide+a+date+range+to+view+your+recorded+Gong+meetings.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Last+weeks%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+your+Gong+meetings+from+%3Cb%3EOct+17%2C+2023%2C+to+Oct+24%2C+2023%3C%2Fb%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3EClient+Update+-+%5BRecorded%3A+Oct+24%2C+2023%2C+2%3A00+PM%5D%3C%2Fli%3E%5Cn++%3Cli%3EProject+Kickoff+-+%5BRecorded%3A+Oct+23%2C+2023%2C+3%3A00+PM%5D%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Client+Update%22%2C%22connectorName%22%3A%22gong%22%7D%2C%7B%22citationTitle%22%3A%22Project+Kickoff%22%2C%22connectorName%22%3A%22gong%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience that we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we do recommend that you create a gong connector in Agent Studio before installing this plugin to streamline the process. Please follow our **Gong Connector Guide** to do so. Once you have done this, simply follow our plugin installation documentation to get your plugin installed in minutes.

# Appendix

This api will allow to retrieve gong meetings between a date range.

```bash
curl -X POST "https://us-35031.api.gong.io/v2/calls/extensive" \
     --header "accept: application/json" \
     --header "authorization: Bearer {{personal_access_token}}" \
     --header "content-type: application/json" \
     --data '{
       "cursor": "{{cursor}}",
       "contentSelector": {
         "context": "None",
         "exposedFields": {
           "collaboration": {
             "publicComments": false
           },
           "content": {
             "pointsOfInterest": false,
             "structure": false,
             "topics": false,
             "trackers": false
           },
           "interaction": {
             "personInteractionStats": false,
             "questions": false,
             "speakers": false,
             "video": false
           },
           "media": false,
           "parties": true
         }
       },
       "filter": {
         "fromDateTime": "{{from_date}}",
         "toDateTime": "{{to_date}}"
       }
     }'
```

**Required Body Parameters:**

- `{{from_date}}` The lower limit of the date range.
- `{{to_date}}` The upper limit of the date range.
- `parties` should always be set to `true`.

**Optional Body Parameters:**

- `{{cursor}}` required only in the case of pagination.