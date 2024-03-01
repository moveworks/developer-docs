---
id: 10
name: Notification with link
description: Send an actionable alert to users with deep links that track clickthrough & completion.
workspace: events
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A1636%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22iPaaS%3A+Scheduled+job+that+runs+once+a+month+at+the+end+of+the+month.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22It%27s+time+to+prep+for+month+end+close%21+We+need+your+help+to+ensure+our+financials+accurately+represent+our+business+activity.+%5Cn%5Cn%F0%9F%91%89+Please+look+through+your+inbox+and+forward+any+invoices+that+may+have+been+missed+to+%3Ca+href%3D%5C%22mailto%3Aap%40moveworks.ai%5C%22%3Eap%40moveworks.ai%3C%2Fa%3E.%5Cn%5Cn%F0%9F%91%89+We+also+need+your+expense+reports+submitted+in+%3Ca+href%3D%5C%22expensify.com%5C%22%3EExpensify%21%3C%2Fa%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Emoji+codes+are+supported+across+all+platforms.+Links+all+work+with+link+tracking+analytics.%22%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D
time_in_minutes: 10
difficulty_level: Beginner
---

# What does this pattern do?

Send an actionable alert to users with trackable deep links to measure click through & completion.

[View Purple Chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A1636%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22iPaaS%3A+Scheduled+job+that+runs+once+a+month+at+the+end+of+the+month.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22It%27s+time+to+prep+for+month+end+close%21+We+need+your+help+to+ensure+our+financials+accurately+represent+our+business+activity.+%5Cn%5Cn%F0%9F%91%89+Please+look+through+your+inbox+and+forward+any+invoices+that+may+have+been+missed+to+%3Ca+href%3D%5C%22mailto%3Aap%40moveworks.ai%5C%22%3Eap%40moveworks.ai%3C%2Fa%3E.%5Cn%5Cn%F0%9F%91%89+We+also+need+your+expense+reports+submitted+in+%3Ca+href%3D%5C%22expensify.com%5C%22%3EExpensify%21%3C%2Fa%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Emoji+codes+are+supported+across+all+platforms.+Links+all+work+with+link+tracking+analytics.%22%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D)

# Example Use Cases

1. **Finance**: Ask employees to submit any expense reports they need to submit at the end of the month
2. **Recruiting**: Run employee referral drives with deep-links to applicant tracking system
3. **Sales**: Remind sales representatives to add call summary to notes if not completed within 24 hours

# Design Considerations

## Design time

1. Start in the Events workspace.
2. Generate an [event ID](https://developer.moveworks.com/creator-studio/conversation-design/triggers/event-triggers)
3. Prepare a message using our [chat markup](https://developer.moveworks.com/creator-studio/reference/markup). You can prepare your chat markup using our [message tester tool](https://developer.moveworks.com/creator-studio/developer-tools/message-tester/)
4. Send it to the user.


## Run time

- Your copilot will provide a wrapped URL which will redirect through Moveworks services for analytics
