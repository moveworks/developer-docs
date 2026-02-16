---
availability: INSTALLABLE
description: A plugin that allows users to reset their Microsoft MFA device.
name: Reset Microsoft MFA
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hi%2C+Can+you+please+help+me+reset+my+Azure+MFA.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%2C+do+you+want+to+proceed+with+resetting+the+MFA+as+this+cannot+be+reverted+%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22No%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Inbound+Request+to+Middleware+%5C%22Azure+Functions%5C%22+%5Cn%5Cn%7B%5Cn+%5C%22email%5C%22+%3A+%3Cuser_email%3E%5Cn%7D%5Cn+%5CnProcess%3A%5Cn1.+Generate+Bearer+Token+for+Authentication%5Cn2.+LIST+the+existing+MFA+for+the+user%5Cn3.+Delete+the+MFA+for+the+user%5Cn%5CnOutbound+Response%3A%5Cn%7B%5Cn+++%5C%22Status%5C%22%3A+%5C%22OK+%28200%29%5C%22%5Cn%7D%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I%27ve+successfully+reset+the+MFA+on+Azure%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- microsoft-graph
---

### **Introduction**

The **Reset Microsoft MFA** plugin empowers IT teams to securely reset Multi-Factor Authentication (MFA) for users directly through the Moveworks AI Assistant. Whether a user has forgotten their credentials, switched to a new device or experienced suspicious activity, this plugin eliminates the need for manual IT intervention by enabling quick, conversational MFA resets.

This guide will walk you through how to set up the integration and build the reset workflow in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hi%2C+Can+you+please+help+me+reset+my+Azure+MFA.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%2C+do+you+want+to+proceed+with+resetting+the+MFA+as+this+cannot+be+reverted+%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22No%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Inbound+Request+to+Middleware+%5C%22Azure+Functions%5C%22+%5Cn%5Cn%7B%5Cn+%5C%22email%5C%22+%3A+%3Cuser_email%3E%5Cn%7D%5Cn+%5CnProcess%3A%5Cn1.+Generate+Bearer+Token+for+Authentication%5Cn2.+LIST+the+existing+MFA+for+the+user%5Cn3.+Delete+the+MFA+for+the+user%5Cn%5CnOutbound+Response%3A%5Cn%7B%5Cn+++%5C%22Status%5C%22%3A+%5C%22OK+%28200%29%5C%22%5Cn%7D%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I%27ve+successfully+reset+the+MFA+on+Azure%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Microsoft Graph first, prior to installing this plugin. Please follow the [Microsoft Graph Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=microsoft-graph) guide to create the connector.

**Note**: For **Reset Microsoft MFA** functionality, you will need to also add the following permissions (the connector guide will walk you through how to add permissions): 

- Assign the following **Application Permissions:** `UserAuthenticationMethod.Read.All` and `UserAuthenticationMethod.ReadWrite.All`

Once the connector is configured, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### API #1: List Authentication Methods

Query the [Microsoft Graph API](https://learn.microsoft.com/en-us/graph/api/resources/authenticationmethods-overview?view=graph-rest-1.0) to retrieve all **Microsoft Authenticator methods** registered for a given user.

### API #2: Delete Microsoft Authenticator Method

Use the [Microsoft Graph API](https://learn.microsoft.com/en-us/graph/api/microsoftauthenticatorauthenticationmethod-delete?view=graph-rest-1.0&tabs=http) to **delete** a specific **Microsoft Authenticator method** for a user by ID.