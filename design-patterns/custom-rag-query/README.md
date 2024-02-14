---
id: 11
name: Custom RAG Query
description: Search information in a custom LLM that does its own retrieval-augmented generation
workspace: queries
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6159%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EWho+won+the+Superbowl+2024%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EMoveworks+rephrases+query+to+%5C%22Who+won+the+Superbowl+in+2024%5C%22%3Cbr%3E%3Cbr%3ERequest+to+RAG+model%3A%3Cbr%3E%7B%3Cbr%3E++%5C%22prompt%5C%22%3A+%5C%22Who+won+the+Superbowl+in+2024%5C%22%3Cbr%3E%7D%3Cbr%3E%3Cbr%3EOutbound+Response%3A%3Cbr%3E%7B%3Cbr%3E++%5C%22result%5C%22%3A+%5C%22The+Kansas+City+Chiefs+won+Super+Bowl+LVIII+in+the+year+2024%2C+defeating+the+San+Francisco+49ers+with+a+final+score+of+25-22+in+overtime.%5C%22%3Cbr%3E%7D%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EThe+Kansas+City+Chiefs+won+Super+Bowl+LVIII+in+the+year+2024%2C+defeating+the+San+Francisco+49ers+with+a+final+score+of+25-22+in+overtime.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EWho+was+the+QB+for+the+opposing+team%3F%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EMoveworks+rephrases+query+to+%5C%22Who+was+the+quarterback+for+the+San+Francisco+49ers+in+Super+Bowl+LVIII+in+2024%3F%5C%22++%3Cbr%3E%3Cbr%3ERequest+to+RAG+model%3A+%3Cbr%3E%7B%3Cbr%3E+%5C%22prompt%5C%22%3A+%5C%22Who+was+the+quarterback+for+the+San+Francisco+49ers+in+Super+Bowl+LVIII+in+2024%3F%5C%22+%3Cbr%3E%7D++%3Cbr%3E%3Cbr%3EOutbound+Response%3A+%3Cbr%3E%7B%3Cbr%3E+%5C%22result%5C%22%3A+%5C%22Brock+Purdy%5C%22+%3Cbr%3E%7D+%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EThe+quarterback+for+the+San+Francisco+49ers+in+Super+Bowl+LVIII%2C+which+was+held+in+2024%2C+was+Brock+Purdy%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
time_in_minutes: 10
difficulty_level: Beginner
---

# What does this pattern do?

Search information in a custom LLM that does its own retrieval-augmented generation.

[View Purple Chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6159%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EWho+won+the+Superbowl+2024%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EMoveworks+rephrases+query+to+%5C%22Who+won+the+Superbowl+in+2024%5C%22%3Cbr%3E%3Cbr%3ERequest+to+RAG+model%3A%3Cbr%3E%7B%3Cbr%3E++%5C%22prompt%5C%22%3A+%5C%22Who+won+the+Superbowl+in+2024%5C%22%3Cbr%3E%7D%3Cbr%3E%3Cbr%3EOutbound+Response%3A%3Cbr%3E%7B%3Cbr%3E++%5C%22result%5C%22%3A+%5C%22The+Kansas+City+Chiefs+won+Super+Bowl+LVIII+in+the+year+2024%2C+defeating+the+San+Francisco+49ers+with+a+final+score+of+25-22+in+overtime.%5C%22%3Cbr%3E%7D%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EThe+Kansas+City+Chiefs+won+Super+Bowl+LVIII+in+the+year+2024%2C+defeating+the+San+Francisco+49ers+with+a+final+score+of+25-22+in+overtime.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EWho+was+the+QB+for+the+opposing+team%3F%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EMoveworks+rephrases+query+to+%5C%22Who+was+the+quarterback+for+the+San+Francisco+49ers+in+Super+Bowl+LVIII+in+2024%3F%5C%22++%3Cbr%3E%3Cbr%3ERequest+to+RAG+model%3A+%3Cbr%3E%7B%3Cbr%3E+%5C%22prompt%5C%22%3A+%5C%22Who+was+the+quarterback+for+the+San+Francisco+49ers+in+Super+Bowl+LVIII+in+2024%3F%5C%22+%3Cbr%3E%7D++%3Cbr%3E%3Cbr%3EOutbound+Response%3A+%3Cbr%3E%7B%3Cbr%3E+%5C%22result%5C%22%3A+%5C%22Brock+Purdy%5C%22+%3Cbr%3E%7D+%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EThe+quarterback+for+the+San+Francisco+49ers+in+Super+Bowl+LVIII%2C+which+was+held+in+2024%2C+was+Brock+Purdy%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D)

# Example Use Cases

1. **Perplexity**: Search the internet
2. **Manufacturing**: Search machine manuals
3. **Pharmaceuticals**: Answer questions about prescription drugs

# Design Considerations

## Design time

1. Start in the Queries workspace.
2. Define a wide-reaching name & short description for your query
3. Set up an [API Action](https://developer.moveworks.com/creator-studio/api-configuration/) to your RAG model.
4. [Label the API response](https://developer.moveworks.com/creator-studio/conversation-design/guidelines/api-labeling/). The ID is arbitrary, but you should mark the LLM response as your description.
5. For your trigger phrases, provide wide-reaching queries that showcase the different types of information your RAG model can serve.
6. During [slot extraction](https://developer.moveworks.com/creator-studio/conversation-design/slots/smart-extraction/#training-moveworks-to-recognize-your-slot), use the entire trigger phrase as your utterance.
7. Launch!


## Run time

- You SHOULD be on the [Next Gen Copilot](https://developer.moveworks.com/creator-studio/conversation-design/creator-studio-in-copilot/) for optimal results.
- Your Next Gen Copilot will write a question for your RAG model that considers the previous conversation history.
