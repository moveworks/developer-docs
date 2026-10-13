---
availability: INSTALLABLE
name: IT Walk-up Visits
description: Lets employees book a Tech Lounge appointment, join a location's walk-in queue, and view or cancel an existing booking — all from chat, without navigating the ServiceNow portal to find the right form.
installation_asset_uuid: 10707c3b-5db3-4c0f-b705-a5a64c1c7dbd
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22my+laptop+is+broken%2C+book+appointment+with+tech+lounge+tomorrow+3pm%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+setting+up+an+in-person+Tech+Lounge+appointment+for+Abel+Tuter+at+Santa+Clara+Tech+Lounge.%3Cbr%3EI+matched+your+request+to+%3Cb%3EBook+an+appointment%3C%2Fb%3E%2C+chose+%3Cb%3ESanta+Clara+Tech+Lounge%3C%2Fb%3E+based+on+your+home+location%2C+and+selected+%3Cb%3ESomething+is+not+working%3C%2Fb%3E+as+the+visit+reason.%22%7D%5D%7D%5D%7D
solution_tags:
- IT
- Support
systems:
- servicenow
---

# Description

Gives employees a conversational front door to ServiceNow's Walk-Up Experience: book a Tech Lounge appointment, check in to a walk-in queue, or view and cancel an existing booking — all without leaving chat.

# Pre-requisites

- **Employee Slate for ITSM** (`sn_itsm_empworks`) v2.0.3 or later
- **ServiceNow Walk-Up Experience** plugin (`com.snc.walkup`) active on the instance
- **ServiceNow connector** configured with OAuth 2.0 Client Credentials

Follow the [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

# What Is In Scope for This Plugin?

- Booking a Tech Lounge appointment (in-person, remote, or either).
- Joining a location's walk-in queue and receiving a real queue position.
- Viewing an employee's existing appointment and walk-in queue entry.
- Cancelling an existing appointment or walk-in queue entry.

# What Is Out of Scope for This Plugin?

- Rescheduling an existing appointment (cancel and rebook only).
- Walk-in queue join for remote-only locations.
- Acting on behalf of another employee.
