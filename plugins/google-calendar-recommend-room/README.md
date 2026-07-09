---
availability: INSTALLABLE
installation_asset_uuid: eea7c274-81f5-4152-b525-8ca335d6a76f
description: Find the best available meeting room — recommends rooms based on attendee locations, booking history, or a specific building you have in mind.
name: Recommend a Room for a Meeting
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+help+me+find+a+room+for+a+meeting+with+Mike+and+Emily+tomorrow%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+Mike+and+Emily+in+%3Cb%3EMoveworks%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22moveworks-data-api%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+a+few+people+with+those+names.+Which+Mike+and+Emily+are+you+meeting+with%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22moveworks-data-api%22%2C%22citationTitle%22%3A%22Mike+Jones+%28Product+Manager%29%22%7D%2C%7B%22connectorName%22%3A%22moveworks-data-api%22%2C%22citationTitle%22%3A%22Mike+Smith+%28Recruiter%29%22%7D%2C%7B%22connectorName%22%3A%22moveworks-data-api%22%2C%22citationTitle%22%3A%22Emily+Chen+%28Engineering%29%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Mike+Jones+and+Emily+Chen.+Let%27s+aim+for+30+minutes+tomorrow+around+2%3A00+PM.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Checking+availability+for+Mike+Jones+and+Emily+Chen...%22%2C%22connectorName%22%3A%22google-calendar%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+available+conference+rooms...%22%2C%22connectorName%22%3A%22google-calendar%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+checked+everyone%27s+schedule+for+tomorrow+at+2%3A00+PM.+Here+are+the+available+rooms+that+can+accommodate+your+group%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cstrong%3EThe+Fishbowl%3C%2Fstrong%3E+%28Floor+2%29+-+Capacity%3A+4%3C%2Fli%3E%3Cli%3E%3Cstrong%3EAda+Lovelace%3C%2Fstrong%3E+%28Floor+3%29+-+Capacity%3A+8%2C+Video+Conferencing%3C%2Fli%3E%3Cli%3E%3Cstrong%3EThe+Nook%3C%2Fstrong%3E+%28Floor+2%29+-+Capacity%3A+3%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22google-calendar%22%2C%22citationTitle%22%3A%22The+Fishbowl%22%7D%2C%7B%22connectorName%22%3A%22google-calendar%22%2C%22citationTitle%22%3A%22Ada+Lovelace%22%7D%2C%7B%22connectorName%22%3A%22google-calendar%22%2C%22citationTitle%22%3A%22The+Nook%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Finance - Other
- HR - Other
- IT
- Productivity
- Sales
systems:
- google-calendar
- google-admin-sdk
---

# Description

Find the right meeting room for your attendees — the AI Assistant recommends available rooms based on where attendees are working that day, their room booking history, or a specific building you have in mind.

# User Experience Preview

Please refer to the following [**Purple Chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+help+me+find+a+room+for+a+meeting+with+Mike+and+Emily+tomorrow%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+Mike+and+Emily+in+%3Cb%3EMoveworks%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22moveworks-data-api%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+a+few+people+with+those+names.+Which+Mike+and+Emily+are+you+meeting+with%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22moveworks-data-api%22%2C%22citationTitle%22%3A%22Mike+Jones+%28Product+Manager%29%22%7D%2C%7B%22connectorName%22%3A%22moveworks-data-api%22%2C%22citationTitle%22%3A%22Mike+Smith+%28Recruiter%29%22%7D%2C%7B%22connectorName%22%3A%22moveworks-data-api%22%2C%22citationTitle%22%3A%22Emily+Chen+%28Engineering%29%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Mike+Jones+and+Emily+Chen.+Let%27s+aim+for+30+minutes+tomorrow+around+2%3A00+PM.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Checking+availability+for+Mike+Jones+and+Emily+Chen...%22%2C%22connectorName%22%3A%22google-calendar%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+available+conference+rooms...%22%2C%22connectorName%22%3A%22google-calendar%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+checked+everyone%27s+schedule+for+tomorrow+at+2%3A00+PM.+Here+are+the+available+rooms+that+can+accommodate+your+group%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cstrong%3EThe+Fishbowl%3C%2Fstrong%3E+%28Floor+2%29+-+Capacity%3A+4%3C%2Fli%3E%3Cli%3E%3Cstrong%3EAda+Lovelace%3C%2Fstrong%3E+%28Floor+3%29+-+Capacity%3A+8%2C+Video+Conferencing%3C%2Fli%3E%3Cli%3E%3Cstrong%3EThe+Nook%3C%2Fstrong%3E+%28Floor+2%29+-+Capacity%3A+3%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22google-calendar%22%2C%22citationTitle%22%3A%22The+Fishbowl%22%7D%2C%7B%22connectorName%22%3A%22google-calendar%22%2C%22citationTitle%22%3A%22Ada+Lovelace%22%7D%2C%7B%22connectorName%22%3A%22google-calendar%22%2C%22citationTitle%22%3A%22The+Nook%22%7D%5D%7D%5D%7D%5D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# Prerequisites

Before installing and using the **Recommend Rooms** plugin, ensure the following requirements are met.

### 1. Google Calendar Connector

This plugin requires an active **Google Calendar connector** configured with the OAuth 2.0 Authorization Code (User Consent Auth) flow.

- If you have not already set up the connector, follow the [**Google Calendar Connector Guide**](https://marketplace.moveworks.com/connectors/google-calendar#how-to-implement) before proceeding.
- The connector must be fully configured and tested before installing this plugin.

### 2. Google Admin SDK Connector

This plugin also requires an active **Google Admin SDK connector**. Room and building data is retrieved from the Google Workspace Admin Directory API, which is a separate connector from the Google Calendar connector.

- If you have not already set up the Admin SDK connector, follow the [**Google Admin SDK Connector Guide**](https://marketplace.moveworks.com/connectors/google-admin-sdk#how-to-implement) before proceeding.
- The connector must be fully configured and tested before installing this plugin.

### 3. Plugin Installation

Once the connectors are ready, follow the [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for steps on how to install and activate the plugin in Agent Studio.

### 4. Google Workspace System Requirements

### a. End User Permissions

To get room recommendations through this plugin, end users must have:

- A licensed Google Workspace account with Google Calendar enabled
- Working location set in Google Calendar for the recommendation to be based on their office location. If not set, the plugin falls back to their room booking history to infer their likely location

### b. Room and Building Data Requirements

For the plugin to recommend rooms, your Google Workspace admin must have:

- **Buildings configured** in Google Workspace Admin Console under **Directory → Buildings and resources**
- **Rooms configured** as calendar resources with capacity, building, and floor information populated
- Without this data, the plugin will not be able to find or recommend any rooms

### c. API Permissions

This plugin uses two connectors with separate permission requirements:

| Connector | Permission | Purpose |
| --- | --- | --- |
| Google Calendar | `https://www.googleapis.com/auth/calendar` | Read working location events and calendar history for attendees |
| Google Admin SDK | `https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly` | Read room and building data from the Admin Directory |

---

# Implementation Details

This plugin has two recommendation strategies depending on how the user frames their request:

- **Attendee-based:** The user asks for a room for a set of attendees without specifying a location. The plugin infers each attendee's likely office location from their working location or booking history, and recommends rooms accordingly.
- **Building-based:** The user specifies a building (or a location is implied). The plugin skips the location inference step and searches directly in that building.

The diagram below gives a high-level picture of that flow, followed by a breakdown of each step.

### Visual Representation of How the Plugin Works

![image.png](Recommend%20Rooms%20for%20a%20Meeting/image.png)

### API Details

This plugin uses up to seven API calls depending on the recommendation strategy selected.

### API #1: Get Working Location for Each Attendee

Retrieves each attendee's working location event for the day of the meeting from Google Calendar. This tells the plugin which office building the attendee has indicated they will be working from on that day. This API uses the Google Calendar Connector.

```bash
curl --request GET \
  --url 'https://www.googleapis.com/calendar/v3/calendars/{{calendar_id}}/events?timeMin={{start_date_time}}&timeMax={{end_date_time}}&eventTypes=workingLocation&singleEvents=true' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
```

**Key nuances:**

- This runs in parallel for all attendees.
- If an attendee has no working location set for that day, they are flagged as an "unset user" and their location is inferred from booking history in the next steps.

### API #2: Get Meeting History for Unset Users

For attendees whose working location is not set, the plugin looks back at their last 7 days of calendar events to find rooms they have previously booked. This is used to infer their most likely office building and floor. This API uses the Google Calendar Connector.

```bash
curl --request GET \
  --url 'https://www.googleapis.com/calendar/v3/calendars/{{email}}/events?timeMin={{7_days_ago}}&timeMax={{event_start_time}}&singleEvents=true&orderBy=startTime&maxResults=350' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
```

**Key nuances:**

- This runs in parallel for all unset users.
- The look-back window is 7 days prior to the meeting start time.

### API #3: Get Rooms in Building and Floor

For each building and floor identified, retrieves all room resources in that area from the Google Workspace Admin Directory. This API uses the Google Admin SDK connector.

```bash
curl --request GET \
  --url 'https://www.googleapis.com/admin/directory/v1/customer/my_customer/resources/calendars?query=buildingId="{{building_name}}" AND floorName={{floor}}' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
```

### API #4: Get Room Availability

Checks the free/busy availability of all rooms in the building and floor area for the meeting time window. This API uses the Google Calendar Connector.

```bash
curl --request POST \
  --url 'https://www.googleapis.com/calendar/v3/freeBusy' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "timeMin": "{{event_start_time}}",
    "timeMax": "{{event_end_time}}",
    "items": [{"id": "{{room_email}}"}, ...]
  }'
```

**Key nuances:**

- This runs in parallel for each batch of rooms.
- Only rooms with no busy blocks during the meeting window are considered available.

### API #5: Get Buildings

When the user specifies a building, the plugin retrieves the full list of buildings from the Google Workspace Admin Directory to resolve the building name to its ID before searching for rooms. This API uses the Google Admin SDK connector. 

```bash
curl --request GET \
  --url 'https://www.googleapis.com/admin/directory/v1/customer/my_customer/resources/buildings' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
```

Now that you understand how the plugin works under the hood, let's walk through what it can and can't do. We recommend reading both sections before going live to ensure the best experience for your users.

# What Is In Scope for This Plugin?

This plugin supports the following capabilities:

- Recommend available rooms based on **attendee working locations** set in Google Calendar
- Recommend available rooms based on **attendee room booking history** when working location is not set
- Recommend available rooms in a **specific building** when the user provides or implies a location
- Filter rooms by **capacity** to ensure the room fits the number of attendees
- Rank rooms by best-fit capacity — avoiding unnecessarily large rooms for small meetings
- Return up to **3 room recommendations per location**
- Support meetings where attendees are spread across **multiple office locations**, with separate room recommendations per location

# What Is Out of Scope for This Plugin?

This plugin does **not** support the following:

- Booking the recommended room — the user needs to add the room email to the meeting invite manually or via the **Book a Meeting** plugin
- Recommending rooms for attendees outside your Google Workspace organization
- Recommending rooms if building and room data has not been configured by your Google Workspace admin in the Admin Console
- Recommending rooms based on specific amenities (e.g. video conferencing equipment, whiteboards) — rooms are ranked by availability and capacity only
- Attendees with no working location set and no room booking history in the past 7 days may not receive accurate location-based recommendations