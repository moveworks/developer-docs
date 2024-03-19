---
id: 28
name: Filter By ID
description: Filters a dataset on one column using an exact match.
workspace: queries
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A750%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I%27m+in+building+86+--+where%27s+the+nearest+printer%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Moveworks+converts+%5C%22building+86%5C%22+to+%5C%2286%5C%22+and+passes+to+to+API%3A%5Cn%5Cn%3Ccode%3E%7B%5C%22building%5C%22%3A+%5C%2286%5C%22%7D%3C%2Fcode%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22API+returns+a+list+of+printer+objects+matching+the+criteria%3A%5Cn%3Ccode%3E%5B%7B%5C%22printer%5C%22%3A+%5C%22Calisto%5C%22%2C+...%7D%2C+%7B%5C%22printer%5C%22%3A+Titan%5C%22%2C+...%7D%5D%3C%2Fcode%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Ci%3EOne+moment%2C+fetching+your+results.+This+may+take+%7E10+seconds%3C%2Fi%3E%5Cn%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Calista%3A+Canon+PIXMA%22%7D%2C%7B%22title%22%3A%22Titan%3A+Epson+Workforce%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Show+me+Titan.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Sure%2C+here+is+Titan.%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Titan%3A+Epson+Workforce%22%2C%22text%22%3A%22%3Cb%3EPaper+Level%3C%2Fb%3E%3A+Full%5Cn%3Cb%3EDriver+Installation%3C%2Fb%3E%3A+%3Ca%3EClick+here%3C%2Fa%3E%22%7D%5D%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D
time_in_minutes: 15
difficulty_level: Beginner
---

# What does this pattern do?

Filter a dataset on one column using an exact match.

[View Purple Chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A750%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I%27m+in+building+86+--+where%27s+the+nearest+printer%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Moveworks+converts+%5C%22building+86%5C%22+to+%5C%2286%5C%22+and+passes+to+to+API%3A%5Cn%5Cn%3Ccode%3E%7B%5C%22building%5C%22%3A+%5C%2286%5C%22%7D%3C%2Fcode%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22API+returns+a+list+of+printer+objects+matching+the+criteria%3A%5Cn%3Ccode%3E%5B%7B%5C%22printer%5C%22%3A+%5C%22Calisto%5C%22%2C+...%7D%2C+%7B%5C%22printer%5C%22%3A+Titan%5C%22%2C+...%7D%5D%3C%2Fcode%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Ci%3EOne+moment%2C+fetching+your+results.+This+may+take+%7E10+seconds%3C%2Fi%3E%5Cn%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Calista%3A+Canon+PIXMA%22%7D%2C%7B%22title%22%3A%22Titan%3A+Epson+Workforce%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Show+me+Titan.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Sure%2C+here+is+Titan.%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Titan%3A+Epson+Workforce%22%2C%22text%22%3A%22%3Cb%3EPaper+Level%3C%2Fb%3E%3A+Full%5Cn%3Cb%3EDriver+Installation%3C%2Fb%3E%3A+%3Ca%3EClick+here%3C%2Fa%3E%22%7D%5D%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D)

# Example Use Cases

1. **Finance**: Find invoices by their linked PO ID
2. **IT**: View watches on an incident

# Design Considerations

## Design time

1. Start in the Queries workspace.
2. Provide a descriptive name & short description
3. Set up an [API Action](https://developer.moveworks.com/creator-studio/api-configuration/) to your endpoint. Make sure to use `{{query}}` as the filtered value.
4. [Label the API response](https://developer.moveworks.com/creator-studio/conversation-design/guidelines/api-labeling/).
5. For your trigger phrases, provide examples of ways that users might ask to filter on the specified value
6. During [slot extraction](https://developer.moveworks.com/creator-studio/conversation-design/slots/smart-extraction/#training-moveworks-to-recognize-your-slot), specify the ID / keyword that will be passed to your API from the trigger phrases.
7. Launch!

## Run time

### All Experiences

- Your copilot will [limit the number of records shown](https://developer.moveworks.com/creator-studio/conversation-design/guidelines/api-labeling/#select-additional-fields)

### Classic Copilot

- Your copilot will make an API call for each possible ID detected.
- Your copilot will pass the slot value exactly as specified in the utterance
- Your copilot will not ask for the ID if it is omitted from the utterance