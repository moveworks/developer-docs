---
id: 11
name: Static Lookup
description: Performs a lookup in a system without requiring any parameters
workspace: queries
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A8533%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Are+there+any+upcoming+birthdays+within+the+company%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3ERun+report+in+Workday+to+get+any+upcoming+birthdays%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Ci%3EOne+moment%2C+fetching+your+results.+This+may+take+%7E10+seconds%3C%2Fi%3E%5Cn%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22John+Mouse%3A+March+25%22%7D%2C%7B%22title%22%3A%22Julia+Gargonzo%3A+April+1%22%7D%2C%7B%22title%22%3A%22Lilly+Lucy%3A+April+2%22%7D%5D%7D%5D%7D%7D%5D%7D
time_in_minutes: 10
difficulty_level: Beginner
---

# What does this pattern do?

Request information in an external system without filtering.

[View Purple Chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A8533%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Are+there+any+upcoming+birthdays+within+the+company%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3ERun+report+in+Workday+to+get+any+upcoming+birthdays%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Ci%3EOne+moment%2C+fetching+your+results.+This+may+take+%7E10+seconds%3C%2Fi%3E%5Cn%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22John+Mouse%3A+March+25%22%7D%2C%7B%22title%22%3A%22Julia+Gargonzo%3A+April+1%22%7D%2C%7B%22title%22%3A%22Lilly+Lucy%3A+April+2%22%7D%5D%7D%5D%7D%7D%5D%7D)

# Example Use Cases

1. **HR**: Get upcoming birthdays
2. **Legal**: Get latest NDA
3. **IT**: Get system outages

# Design Considerations

## Design time

1. Start in the Queries workspace.
2. Define a name & short description that identifies the usecase, keep this as specific as possible to remove ambiguity
3. Set up an [API Action](https://developer.moveworks.com/creator-studio/api-configuration/) to your query.
4. [Label the API response](https://developer.moveworks.com/creator-studio/conversation-design/guidelines/api-labeling/). 
5. For your trigger phrases, provide a couple of queries that you think might be asked to get this information.
6. Launch!


## Run time

- Your copilot will only return the items you have labeled during step 4 above
