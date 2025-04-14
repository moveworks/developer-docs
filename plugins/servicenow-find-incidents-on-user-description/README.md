---
accreditations:
- DEFAULT
difficulty_level: BEGINNER
fidelity: GUIDE
time_in_minutes: 20
installation_asset_uuid: b659da01-e016-48e1-9f52-39f29edb4457
name: "Find Incidents based on the User\u2019s Description"
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hey+find+me+incidents+similar+to+a+user+unable+to+connect+to+the+company+VPN%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+found+a+few+similar+incidents+in+%3Cb%3EServiceNow%3C%2Fb%3E.+I+can+search+for+incidents+from+a+specific+date+as+well.+From+when+would+you+like+to+search%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESince+last+week%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+here+are+the+top+3+matches+from+the+last+week%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EINC0010023%3A%3C%2Fb%3E+User+in+Finance+department+unable+to+connect+to+VPN+after+recent+network+update.+Raised+by%3A+John+Doe%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EINC0010112%3A%3C%2Fb%3E+Multiple+users+reporting+VPN+connectivity+issues+following+a+patch+deployment.+Raised+by%3A+Alice+Smith%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EINC0010221%3A%3C%2Fb%3E+User+unable+to+connect+to+company+VPN+after+password+reset.+Requires+assistance.+Raised+by%3A+Bob+Johnson%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Productivity
- Ticketing
systems:
- servicenow

---

# Introduction

The Find Incidents based on the User’s Description plugin enables your users to quickly locate relevant incidents within ServiceNow by leveraging the Moveworks AI Assistant.. Users can easily search for incidents using the description they provide and specify the starting date for the search. 

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hey+find+me+incidents+similar+to+a+user+unable+to+connect+to+the+company+VPN%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+found+a+few+similar+incidents+in+%3Cb%3EServiceNow%3C%2Fb%3E.+I+can+search+for+incidents+from+a+specific+date+as+well.+From+when+would+you+like+to+search%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESince+last+week%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+here+are+the+top+3+matches+from+the+last+week%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EINC0010023%3A%3C%2Fb%3E+User+in+Finance+department+unable+to+connect+to+VPN+after+recent+network+update.+Raised+by%3A+John+Doe%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EINC0010112%3A%3C%2Fb%3E+Multiple+users+reporting+VPN+connectivity+issues+following+a+patch+deployment.+Raised+by%3A+Alice+Smith%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EINC0010221%3A%3C%2Fb%3E+User+unable+to+connect+to+company+VPN+after+password+reset.+Requires+assistance.+Raised+by%3A+Bob+Johnson%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for ServiceNow first, prior to installing this plugin. Please follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create the connector. 

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace) for more information on how to install a plugin.