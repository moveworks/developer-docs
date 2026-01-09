---
agent_capabilities:
- Ambient Agent
- Ambient Agent
availability: VALIDATED
description: A plugin that reminds your employees about pending Workday trainings.
name: Remind Employees about Pending Trainings
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%3Cb%3EWeekly+scheduled+job%3C%2Fb%3E%3Cbr%3E%3Cb%3E1.+%3C%2Fb%3ECheck+Workday+for.users+with+an+assigned+training+that+is+due+this+week.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHi+John%2C%3Cbr%3E%3Cbr%3EYour+training%2C+%3Cb%3EEmail+Security+Training%3C%2Fb%3E%2C+is+due+in+Workday+Learning+by+%3Cb%3E2024-08-16%3C%2Fb%3E.+%3Cbr%3E%3Cbr%3EPlease+complete+it+soon%2C+or+it+will+be+escalated+to+your+manager.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Learning & Development
- HR - Onboarding
- HR - Other
systems:
- workday
---

# Conversation Design

[This purple chat mockup](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A7358%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3EWeekly+scheduled+job%3C%2Fb%3E%3Cbr%3E%3Cb%3E1.+%3C%2Fb%3ECheck+Workday+for.users+with+an+assigned+training+that+is+due+this+week.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EHi+John%2C%3Cbr%3E%3Cbr%3EYour+training%2C+%3Cb%3EEmail+Security+Training%3C%2Fb%3E%2C+is+due+in+Workday+Learning+by+%3Cb%3E2024-08-16%3C%2Fb%3E.+%3Cbr%3E%3Cbr%3EPlease+complete+it+soon%2C+or+it+will+be+escalated+to+your+manager.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# Walkthrough

You can watch a video walkthrough where we build this plugin [here](https://vimeo.com/999288807/cc3ddae786?share=copy).
